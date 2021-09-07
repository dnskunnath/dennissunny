view: am_retail_unit_hierarchy_dim {
  sql_table_name: `Internal_MA_CHARTER_looker_Project.AM_RETAIL_UNIT_HIERARCHY_DIM`
    ;;

  dimension: comt_txt {
    type: string
    sql: ${TABLE}.COMT_TXT ;;
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

  dimension: dma_cd_key {
    type: number
    sql: ${TABLE}.DMA_CD_KEY ;;
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

  dimension: excln_ind {
    type: number
    sql: ${TABLE}.EXCLN_IND ;;
  }

  dimension: inact_ind {
    type: number
    sql: ${TABLE}.INACT_IND ;;
  }

  dimension: insr_typ_key {
    type: number
    sql: ${TABLE}.INSR_TYP_KEY ;;
  }

  dimension: inv_typ_key {
    type: number
    sql: ${TABLE}.INV_TYP_KEY ;;
  }

  dimension: oper_mso_key {
    type: number
    sql: ${TABLE}.OPER_MSO_KEY ;;
  }

  dimension: own_mso_key {
    type: number
    sql: ${TABLE}.OWN_MSO_KEY ;;
  }

  dimension: retl_unit_key {
    type: number
    sql: ${TABLE}.RETL_UNIT_KEY ;;
  }

  dimension: sale_geo_key {
    type: number
    sql: ${TABLE}.SALE_GEO_KEY ;;
  }

  dimension: syscode_key {
    type: number
    sql: ${TABLE}.SYSCODE_KEY ;;
  }

  dimension: tm_zn_key {
    type: number
    sql: ${TABLE}.TM_ZN_KEY ;;
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
