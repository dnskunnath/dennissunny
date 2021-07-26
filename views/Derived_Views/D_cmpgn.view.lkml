view: cmpgn {
  derived_table: {
    sql:

 SELECT ${D_eda.SQL_TABLE_NAME}.*,
              CASE WHEN ${D_aad.SQL_TABLE_NAME}.cmpgn_key IS NULL THEN 1 ELSE 0 END AS linr_flg,
              Coalesce(${D_aad.SQL_TABLE_NAME}.cmpgn_start_dt, ${D_eda.SQL_TABLE_NAME}.ctrc_begn_dt) AS strt_dt,
              Coalesce(${D_aad.SQL_TABLE_NAME}.cmpgn_end_dt, ${D_eda.SQL_TABLE_NAME}.ctrc_end_dt) AS end_dt,
           ${D_aad.SQL_TABLE_NAME}.cmpgn_key
          #    ${D_aad.SQL_TABLE_NAME}.cmpgn_nm
            FROM eda
              LEFT JOIN ${D_eda.SQL_TABLE_NAME}
              ON (${D_aad.SQL_TABLE_NAME}.cmpgn_nbr LIKE '%'||${D_eda.SQL_TABLE_NAME}.ctrc_nbr||'%' OR ${D_aad.SQL_TABLE_NAME}.cmpgn_nm LIKE '%'||${D_eda.SQL_TABLE_NAME}.ctrc_nbr||'%')
              AND (${D_aad.SQL_TABLE_NAME}.cust_nbr_eid = ${D_eda.SQL_TABLE_NAME}.cust_nbr OR ${D_aad.SQL_TABLE_NAME}.cust_nbr_anm = ${D_eda.SQL_TABLE_NAME}.cust_nbr)
              WHERE end_dt >= strt_dt
              # Exclude cancelled orders
              AND strt_dt <= (SELECT Max(dt) FROM cal) AND end_dt >= (SELECT Min(dt) FROM cal)
              AND ((${D_eda.SQL_TABLE_NAME}.cust_id, ${D_eda.SQL_TABLE_NAME}.eclipse_regn_nm) IN (

              SELECT DISTINCT cust_id, eclipse_regn_nm FROM LAB_DATA_INSIGHTS.CMPGN_AUD_COMP_CLIENT_QTR_TIM WHERE cust_id IS NOT NULL)
                OR ${D_eda.SQL_TABLE_NAME}.cust_nm IN (SELECT DISTINCT cust_nm FROM LAB_DATA_INSIGHTS.CMPGN_AUD_COMP_CLIENT_QTR_TIM))
         ;;
        }}
