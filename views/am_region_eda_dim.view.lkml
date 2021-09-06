view: am_region_eda_dim {
  sql_table_name: `Internal_MA_CHARTER_looker_Project.AM_REGION_EDA_DIM`
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

  dimension: default_syscode_mapping_flg {
    type: number
    sql: ${TABLE}.DEFAULT_SYSCODE_MAPPING_FLG ;;
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

  dimension: proration_mode_cd {
    type: string
    sql: ${TABLE}.PRORATION_MODE_CD ;;
  }

  dimension: region_cd {
    type: string
    sql: ${TABLE}.REGION_CD ;;
  }

  dimension: region_desc {
    type: string
    sql: ${TABLE}.REGION_DESC ;;
  }

  dimension: region_id {
    type: number
    sql: ${TABLE}.REGION_ID ;;
  }

  dimension: region_key {
    type: number
    sql: ${TABLE}.REGION_KEY ;;
  }

  dimension_group: src_updt_dt {
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
    sql: ${TABLE}.SRC_UPDT_DT ;;
  }

  dimension: syscode {
    type: number
    sql: ${TABLE}.SYSCODE ;;
  }

  dimension: type_cd {
    type: string
    sql: ${TABLE}.TYPE_CD ;;
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

  dimension: weight_mode_cd {
    type: string
    sql: ${TABLE}.WEIGHT_MODE_CD ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
