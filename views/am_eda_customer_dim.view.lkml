view: am_eda_customer_dim {
  sql_table_name: `Internal_MA_CHARTER_looker_Project.AM_EDA_CUSTOMER_DIM`
    ;;

  dimension: active {
    type: string
    sql: ${TABLE}.ACTIVE ;;
  }

  dimension: agcy_id {
    type: number
    sql: ${TABLE}.AGCY_ID ;;
  }

  dimension: comdt_key {
    type: number
    sql: ${TABLE}.COMDT_KEY ;;
  }

  dimension_group: cre_ts {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CRE_TS ;;
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
  }

  dimension: cust_key {
    type: number
    sql: ${TABLE}.CUST_KEY ;;
  }

  dimension: cust_nbr {
    type: number
    sql: ${TABLE}.CUST_NBR ;;
  }

  dimension: cust_nm {
    type: string
    sql: ${TABLE}.CUST_NM ;;
  }

  dimension: cust_typ_cd {
    type: string
    sql: ${TABLE}.CUST_TYP_CD ;;
  }

  dimension: cust_typ_nm {
    type: string
    sql: ${TABLE}.CUST_TYP_NM ;;
  }

  dimension: eclipse_regn_nm {
    type: string
    sql: ${TABLE}.ECLIPSE_REGN_NM ;;
  }

  dimension_group: etl_prcs_dt {
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
    sql: ${TABLE}.ETL_PRCS_DT ;;
  }

  dimension: ld_seq_nbr {
    type: number
    sql: ${TABLE}.LD_SEQ_NBR ;;
  }

  dimension: sale_prsn_key {
    type: number
    sql: ${TABLE}.SALE_PRSN_KEY ;;
  }

  dimension_group: src_upd_dt {
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
    sql: ${TABLE}.SRC_UPD_DT ;;
  }

  dimension_group: updt_ts {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.UPDT_TS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
