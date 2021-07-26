view: non_lin_agg {
  derived_table: {
    sql:
    SELECT
                cmpgn_key
              , insr_ord_key
              , dma_key AS dma_cd_key
              , sbsc_guid_key
              , src_system_cd
              , Cast(Min(evnt_start_lcl_ts) As date) AS first_view_date
              , Cat(Max(evnt_start_lcl_ts) As date) AS last_view_date
            FROM Internal_MA_CHARTER_looker_Project.AAD_EVENT_FACT N
            WHERE evnt_utc_dt BETWEEN (SELECT Min(dt) FROM ${D_cal.SQL_TABLE_NAME}) AND (SELECT Max(dt) + 1 FROM ${D_cal.SQL_TABLE_NAME})
              AND Cast(evnt_start_lcl_ts As date) BETWEEN (SELECT Min(dt) FROM ${D_cal.SQL_TABLE_NAME}) AND (SELECT Max(dt) FROM ${D_cal.SQL_TABLE_NAME})
              AND cmpgn_key IN (SELECT DISTINCT cmpgn_key FROM ${D_cmpgn.SQL_TABLE_NAME} WHERE linr_flg = 0)
              AND lower(evnt_nm) = 'defaultimpression'
              AND exclude_rec = 0
              AND sbsc_guid_key <> -1
                GROUP BY 1,2,3,4,5
    ;;
  }
 }
