view: lin_agg {
  derived_table: {
    sql:
    SELECT
                c.cust_id
              , c.eclipse_regn_nm
                , c.cust_nm
              , c.ctrc_nbr
              , l.syscode_dma_cd_key
              , l.sbsc_guid_key
              , Min(Cast(l.ad_tuning_evnt_start_ts AS DATE)) AS first_view_date
              , Max(Cast(l.ad_tuning_evnt_start_ts AS DATE)) AS last_view_date
                FROM Internal_MA_CHARTER_looker_Project.AM_PROGRAM_AD_TUNING_EVENT_FACT AS l
              JOIN (SELECT DISTINCT cust_id, cust_nm, ctrc_nbr, ord_nbr, eclipse_regn_nm FROM ${D_cmpgn.SQL_TABLE_NAME}) AS c
              ON l.ord_nbr = c.ord_nbr
              AND l.eclipse_regn_nm = c.eclipse_regn_nm
            WHERE l.ad_evnt_start_dt BETWEEN (SELECT Min(dt) FROM cal) AND (SELECT Max(dt) FROM ${D_cal.SQL_TABLE_NAME})
                GROUP BY 1,2,3,4,5,6
    ;;
  }

  dimension:cust_id{
    type:string
    sql: ${TABLE}.cust_idy;;
  }
 }
