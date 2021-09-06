view: aad_campaign_dim {
  sql_table_name: `Internal_MA_CHARTER_looker_Project.AAD_CAMPAIGN_DIM`
    ;;

  dimension: active_ind {
    type: number
    sql: ${TABLE}.ACTIVE_IND ;;
  }

  dimension: advtsr_key {
    type: number
    sql: ${TABLE}.ADVTSR_KEY ;;
  }

  dimension: agcy_key {
    type: number
    sql: ${TABLE}.AGCY_KEY ;;
  }

  dimension: asgn_prod_key {
    type: number
    sql: ${TABLE}.ASGN_PROD_KEY ;;
  }

  dimension_group: cmpgn_end_ts {
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
    sql: ${TABLE}.CMPGN_END_TS ;;
  }

  dimension: cmpgn_id {
    type: number
    sql: ${TABLE}.CMPGN_ID ;;
  }

  dimension: cmpgn_key {
    type: number
    sql: ${TABLE}.CMPGN_KEY ;;
  }

  dimension: cmpgn_nbr {
    type: number
    sql: ${TABLE}.CMPGN_NBR ;;
  }

  dimension: cmpgn_nm {
    type: string
    sql: ${TABLE}.CMPGN_NM ;;
  }

  dimension_group: cmpgn_start_ts {
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
    sql: ${TABLE}.CMPGN_START_TS ;;
  }

  dimension: cmpgn_stts_cd {
    type: string
    sql: ${TABLE}.CMPGN_STTS_CD ;;
  }

  dimension: cmpgn_xtrn_id {
    type: string
    sql: ${TABLE}.CMPGN_XTRN_ID ;;
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

  dimension_group: eff_end_ts {
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
    sql: ${TABLE}.EFF_END_TS ;;
  }

  dimension_group: eff_strt_ts {
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
    sql: ${TABLE}.EFF_STRT_TS ;;
  }

  dimension: ld_seq_nbr {
    type: number
    sql: ${TABLE}.LD_SEQ_NBR ;;
  }

  dimension: map_stts_prod {
    type: string
    sql: ${TABLE}.MAP_STTS_PROD ;;
  }

  dimension: parsed_prod_nm {
    type: string
    sql: ${TABLE}.PARSED_PROD_NM ;;
  }

  dimension: prpsl_id {
    type: string
    sql: ${TABLE}.PRPSL_ID ;;
  }

  dimension: raw_cmpgn_nm {
    type: string
    sql: ${TABLE}.RAW_CMPGN_NM ;;
  }

  dimension: src_system_cd {
    type: string
    sql: ${TABLE}.SRC_SYSTEM_CD ;;
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
