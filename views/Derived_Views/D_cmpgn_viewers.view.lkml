view: D_cmpgn_viewers {
  derived_table: {
    sql:
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
            FROM  ${D_lin_agg.SQL_TABLE_NAME} AS l

          JOIN (
              SELECT DISTINCT cust_id, cust_nm, ctrc_nbr, cmpgn_key, eclipse_regn_nm
              FROM  ${D_cmpgn.SQL_TABLE_NAME}
              WHERE cmpgn_key IS NOT NULL
              QUALIFY Row_Number() Over(PARTITION BY cmpgn_key ORDER BY strt_dt DESC, ord_totl_amt DESC) = 1  # Change ID 007
          ) c
            ON N.cmpgn_key = c.cmpgn_key
            LEFT JOIN Internal_MA_CHARTER_looker_Project.AAD_INSERTION_ORDER_DIM i
            ON N.insr_ord_key = i.insr_ord_key
            AND N.src_system_cd = i.src_system_cd
            AND i.active_ind = 1
          WHERE (i.insr_ord_key IS NULL OR lower(insr_ord_nm) NOT LIKE '%addressable%') # Exclude Addressable IOs from the Main Report Run

    ;;
}

  dimension_group: first_view_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.first_view_date ;;
  }

  dimension_group: last_view_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_view_date ;;

  }

  dimension: cust_id {
    type: string
    sql: ${TABLE}.cust_id ;;
  }




  dimension: eclipse_regn_nm {
    type: string

    sql: ${TABLE}.eclipse_regn_nm;;
  }



  dimension: cust_nm {
    type: string

    sql: ${TABLE}.cust_nm;;
  }



  dimension: ctrc_nbr {
    type: string

    sql: ${TABLE}.ctrc_nbr;;
  }

  dimension: dma_cd_key {
    type: string
    primary_key: yes
    sql: ${TABLE}.dma_cd_key;;
  }

  dimension: sbsc_guid_key {
    type: string

    sql: ${TABLE}.sbsc_guid_key;;
  }




 }
