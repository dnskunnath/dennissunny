view: cmpgn_viewers {
  sql_table_name: `Internal_MA_CHARTER_looker_Project.cmpgn_viewers`
    ;;

  dimension: ctrc_nbr {
    type: number
    sql: ${TABLE}.ctrc_nbr ;;
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.cust_id ;;
  }

  dimension: cust_nm {
    type: string
    sql: ${TABLE}.cust_nm ;;
  }

  dimension: dma_cd_key {
    type: number
    sql: ${TABLE}.dma_cd_key ;;
  }

  dimension: eclipse_regn_nm {
    type: string
    sql: ${TABLE}.eclipse_regn_nm ;;
  }

  dimension_group: first_view {
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

  dimension_group: last_view {
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

  dimension: linr_flg {
    type: number
    sql: ${TABLE}.linr_flg ;;
  }

  dimension: sbsc_guid_key {
    type: number
    sql: ${TABLE}.sbsc_guid_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
