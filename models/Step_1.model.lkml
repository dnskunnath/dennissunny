connection: "internal_ma_charter_looker_project"
explore: cmpgn_viewers {}
view: cmpgn_viewers {
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
