view: am_syscode_dim {
  sql_table_name: `Internal_MA_CHARTER_looker_Project.AM_SYSCODE_DIM`
    ;;

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

  dimension: dst_offst_num {
    type: number
    sql: ${TABLE}.DST_OFFST_NUM ;;
  }

  dimension: eclps_nm {
    type: string
    sql: ${TABLE}.ECLPS_NM ;;
  }

  dimension_group: eff_end_dt {
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
    sql: ${TABLE}.EFF_END_DT ;;
  }

  dimension_group: eff_start_dt {
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
    sql: ${TABLE}.EFF_START_DT ;;
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

  dimension: inact_ind {
    type: number
    sql: ${TABLE}.INACT_IND ;;
  }

  dimension_group: ncc_arch_dt {
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
    sql: ${TABLE}.NCC_ARCH_DT ;;
  }

  dimension: sales_nm {
    type: string
    sql: ${TABLE}.SALES_NM ;;
  }

  dimension: syscode {
    type: number
    sql: ${TABLE}.SYSCODE ;;
  }

  dimension: syscode_desc {
    type: string
    sql: ${TABLE}.SYSCODE_DESC ;;
  }

  dimension: syscode_key {
    type: number
    sql: ${TABLE}.SYSCODE_KEY ;;
  }

  dimension: syscode_typ_key {
    type: number
    sql: ${TABLE}.SYSCODE_TYP_KEY ;;
  }

  dimension: syscode_typ_nm {
    type: string
    sql: ${TABLE}.SYSCODE_TYP_NM ;;
  }

  dimension: syscode_univ_est {
    type: number
    sql: ${TABLE}.SYSCODE_UNIV_EST ;;
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

  dimension: utc_offst_num {
    type: number
    sql: ${TABLE}.UTC_OFFST_NUM ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
