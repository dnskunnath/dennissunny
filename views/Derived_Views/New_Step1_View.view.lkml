view: New_Step1_View {
  derived_table: {
    sql: Create Table  cmpgn_viewers1 AS (
          WITH cal AS (
            -- Calendar for date range reference
            WITH dt_mo_qtr AS (
              SELECT
                    clndr_dt
                  , clndr_skey
                , brdcst_yr_mo_nbr AS mo
                , brdcst_yr_qtr_nbr AS qtr
                , Max(clndr_dt) Over(PARTITION BY brdcst_yr_mo_nbr) AS mo_end
              FROM Internal_MA_CHARTER_looker_Project.AM_CALENDAR_DIM
              GROUP BY 1,2,3,4
            )
            SELECT DISTINCT clndr_skey, clndr_dt AS dt, qtr
            FROM dt_mo_qtr
          --  WHERE qtr = $var_qtr
            --  AND
            --  CURRENT_DATE() > mo_end + 10
          ),
          -- AAD campaign data
          aad AS (
            SELECT DISTINCT
              aad_cmpgn.*, Coalesce(b1.cust_nbr, b2.cust_nbr) AS cust_nbr
            FROM (
              SELECT
                c.cmpgn_nm,
                c.cmpgn_nbr,
                c.cmpgn_key,
              Cast(  c.cmpgn_start_ts As date) AS cmpgn_start_dt,
              Cast(  c.cmpgn_end_ts As date) AS cmpgn_end_dt,
                REGEXP_SUBSTR(REGEXP_REPLACE(a.advtsr_xtrn_id, '^[^0-9a-zA-Z]|[^0-9a-zA-Z]$', ''), '[^ _-]+$') AS cust_nbr_eid,
                REGEXP_SUBSTR(REGEXP_REPLACE(a.advtsr_nm, '^[^0-9a-zA-Z]|[^0-9a-zA-Z]$', ''), '[^ _-]+$') AS cust_nbr_anm
              FROM Internal_MA_CHARTER_looker_Project.AAD_CAMPAIGN_DIM c
              JOIN Internal_MA_CHARTER_looker_Project.AAD_ADVERTISER_DIM a
                ON c.advtsr_key = a.advtsr_key
                -- AND c.src_system_cd = a.src_system_cd -- showing MRM1 as source system in advertiser dim; vs FW1 in campaign dim
                AND a.active_ind = 1
              WHERE c.active_ind = 1
                --AND c.cmpgn_nbr = '522495'
            ) aad_cmpgn
            LEFT JOIN Internal_MA_CHARTER_looker_Project.AM_EDA_CUSTOMER_DIM b1
                ON (Cast(b1.cust_nbr as int) = Cast(aad_cmpgn.cust_nbr_eid As int))

            LEFT JOIN Internal_MA_CHARTER_looker_Project.AM_EDA_CUSTOMER_DIM b2
               ON (Cast(b2.cust_nbr As int) = Cast(aad_cmpgn.cust_nbr_anm as int))
          ),
          -- EDA campaign data
          eda AS (
            SELECT DISTINCT
              cust.cust_key,
              cust.cust_id,
              cust.cust_nm,
              cust.cust_nbr,
        --      CASE WHEN REGEXP_INSTR(ordr.ctrc_nbr, '[^0-9]') > 0 THEN RPad(REGEXP_REPLACE(ordr.ctrc_nbr, '[^0-9]','7'),8,'0')
        --        ELSE ordr.ctrc_nbr
        --      END AS ctrc_nbr,
              ordr.ctrc_nbr,
              ordr.ctrc_begn_dt,
              ordr.ctrc_end_dt,
              ordr.eclipse_regn_nm,
              ordr.ord_nbr,
              ordr.ord_totl_amt  -- Change ID 007
              FROM Internal_MA_CHARTER_looker_Project.AM_ORDER_EDA_FACT AS ordr
              JOIN Internal_MA_CHARTER_looker_Project.AM_EDA_CUSTOMER_DIM AS cust
                  ON cust.cust_id = ordr.cust_id
                  AND cust.eclipse_regn_nm = ordr.eclipse_regn_nm
            --  WHERE COLLATE(ordr.ctrc_nbr,'') NOT RLIKE '[^0-9]'
            -- Exclude non-numeric TIMs for now; Will need to modify for wide Orbit. This will impact how TIM gets loaded into Tableau R/F
          ),
          -- Combined campaign data
          cmpgn AS (
            SELECT eda.*,
              CASE WHEN aad.cmpgn_key IS NULL THEN 1 ELSE 0 END AS linr_flg,
              Coalesce(aad.cmpgn_start_dt, eda.ctrc_begn_dt) AS strt_dt,
              Coalesce(aad.cmpgn_end_dt, eda.ctrc_end_dt) AS end_dt
              ,aad.cmpgn_key
        ,aad.cmpgn_nm
            FROM eda
      LEFT JOIN aad
      ON
      --(aad.cmpgn_nbr LIKE '%'||eda.ctrc_nbr||'%' OR aad.cmpgn_nm LIKE '%'||eda.ctrc_nbr||'%')
        --      AND
              ((cast(aad.cust_nbr_eid as int)= cast(eda.cust_nbr as int)) )
              --ON (aad.cmpgn_nbr LIKE '%'||eda.ctrc_nbr||'%' OR aad.cmpgn_nm LIKE '%'||eda.ctrc_nbr||'%')
        --      AND (aad.cust_nbr_eid = eda.cust_nbr OR aad.cust_nbr_anm = eda.cust_nbr)
         --   WHERE( end_dt >= strt_dt
        --     Exclude cancelled orders
      --  AND strt_dt <= (SELECT Max(dt) FROM cal) AND end_dt >= (SELECT Min(dt) FROM cal))
      --    AND ((eda.cust_id, eda.eclipse_regn_nm) IN (SELECT DISTINCT cust_id, eclipse_regn_nm FROM LAB_DATA_INSIGHTS.CMPGN_AUD_COMP_CLIENT_QTR_TIM WHERE cust_id IS NOT NULL)
              --  OR eda.cust_nm IN (SELECT DISTINCT cust_nm FROM LAB_DATA_INSIGHTS.CMPGN_AUD_COMP_CLIENT_QTR_TIM))
      )
      ,
          -- Linear ad exposures
          lin_agg AS (
                SELECT
                c.cust_id
              , c.eclipse_regn_nm
                , c.cust_nm
              , c.ctrc_nbr
              , l.syscode_dma_cd_key AS dma_cd_key
              , l.sbsc_guid_key
              , Min(Cast(l.ad_tuning_evnt_start_ts AS DATE)) AS first_view_date
              , Max(Cast(l.ad_tuning_evnt_start_ts AS DATE)) AS last_view_date
                FROM Internal_MA_CHARTER_looker_Project.AM_PROGRAM_AD_TUNING_EVENT_FACT AS l
              JOIN (SELECT DISTINCT cust_id, cust_nm, ctrc_nbr, ord_nbr, eclipse_regn_nm FROM cmpgn) AS c
              ON l.ord_nbr = c.ord_nbr
              AND l.eclipse_regn_nm = c.eclipse_regn_nm
            WHERE l.ad_evnt_start_dt BETWEEN (SELECT Min(dt) FROM cal) AND (SELECT Max(dt) FROM cal)
                GROUP BY 1,2,3,4,5,6
            ),
            -- AdsE exposures
             non_lin_agg AS (
                 SELECT
                cmpgn_key
              , insr_ord_key
              , dma_key AS dma_cd_key
              , sbsc_guid_key
              , src_system_cd
              , Cast( Min(evnt_start_lcl_ts) As date) AS first_view_date
              , Cast(Max(evnt_start_lcl_ts) As date) AS last_view_date
            FROM Internal_MA_CHARTER_looker_Project.AAD_EVENT_FACT AS N
            WHERE evnt_utc_dt BETWEEN (SELECT Min(dt) FROM cal) AND (SELECT Max(dt) + 1 FROM cal)
              AND Cast(evnt_start_lcl_ts As date) BETWEEN (SELECT Min(dt) FROM cal) AND (SELECT Max(dt) FROM cal)
          AND cmpgn_key IN (SELECT DISTINCT cmpgn_key FROM cmpgn WHERE linr_flg = 0)
              AND lower(evnt_nm) = 'defaultimpression'
              AND exclude_rec = 0
              AND sbsc_guid_key <> -1
                GROUP BY 1,2,3,4,5
        --        UNION
        --        -- Nelson 3pp data
        --        SELECT
        --        cmpgn_key
        --      , insr_ord_key
        --      , dma_key
        --      , sbsc_guid_key
        --      , 'MRM1' src_system_cd
        --      , Min(tpp_1.imp_dt) AS first_view_date
        --      , Max(tpp_1.imp_dt) AS last_view_date
        --    FROM DLABBUNelson_Lab.vt_non_lin_agg_temp2 tpp_1
        --    WHERE tpp_1.imp_dt BETWEEN (SELECT Min(dt) FROM cal) AND (SELECT Max(dt) FROM cal)
        --      AND tpp_1.cmpgn_key IN (SELECT DISTINCT cmpgn_key FROM cmpgn WHERE linr_flg = 0)
        --    GROUP BY 1,2,3,4,5
            )
            SELECT
              1 AS linr_flg
            , l.cust_id
            , l.eclipse_regn_nm
            , l.cust_nm
            , l.ctrc_nbr
            , l.dma_cd_key
            , l.sbsc_guid_key
            , first_view_date
            , last_view_date
            FROM lin_agg AS l
          UNION ALL
            SELECT DISTINCT
              0 AS linr_flg
            , c.cust_id
            , c.eclipse_regn_nm
            , c.cust_nm
            , c.ctrc_nbr
            , N.dma_cd_key
            , N.sbsc_guid_key
            , first_view_date
            , last_view_date
            FROM non_lin_agg AS N
          JOIN (
              SELECT DISTINCT cust_id, cust_nm, ctrc_nbr, cmpgn_key, eclipse_regn_nm
              FROM cmpgn
              WHERE cmpgn_key IS NOT NULL
              QUALIFY Row_Number() Over(PARTITION BY cmpgn_key ORDER BY strt_dt DESC, ord_totl_amt DESC) = 1  -- Change ID 007
          ) c
            ON N.cmpgn_key = c.cmpgn_key
            LEFT JOIN Internal_MA_CHARTER_looker_Project.AAD_INSERTION_ORDER_DIM i
            ON N.insr_ord_key = i.insr_ord_key
            AND N.src_system_cd = i.src_system_cd
            AND i.active_ind = 1
          WHERE (i.insr_ord_key IS NULL OR lower(insr_ord_nm) NOT LIKE '%addressable%') -- Exclude Addressable IOs from the Main Report Run
        )
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: linr_flg {
    type: number
    sql: ${TABLE}.linr_flg ;;
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.cust_id ;;
  }

  dimension: eclipse_regn_nm {
    type: string
    sql: ${TABLE}.eclipse_regn_nm ;;
  }

  dimension: cust_nm {
    type: string
    sql: ${TABLE}.cust_nm ;;
  }

  dimension: ctrc_nbr {
    type: number
    sql: ${TABLE}.ctrc_nbr ;;
  }

  dimension: dma_cd_key {
    type: number
    sql: ${TABLE}.dma_cd_key ;;
  }

  dimension: sbsc_guid_key {
    type: number
    sql: ${TABLE}.sbsc_guid_key ;;
  }

  dimension: first_view_date {
    type: date
    datatype: date
    sql: ${TABLE}.first_view_date ;;
  }

  dimension: last_view_date {
    type: date
    datatype: date
    sql: ${TABLE}.last_view_date ;;
  }

  set: detail {
    fields: [
      linr_flg,
      cust_id,
      eclipse_regn_nm,
      cust_nm,
      ctrc_nbr,
      dma_cd_key,
      sbsc_guid_key,
      first_view_date,
      last_view_date
    ]
  }
}