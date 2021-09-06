view: aad_advertiser_dim {
  sql_table_name: `Internal_MA_CHARTER_looker_Project.AAD_ADVERTISER_DIM`
    ;;

  dimension: active_ind {
    type: number
    sql: ${TABLE}.ACTIVE_IND ;;
  }

  dimension: advtsr_id {
    type: number
    sql: ${TABLE}.ADVTSR_ID ;;
  }

  dimension: advtsr_key {
    type: number
    sql: ${TABLE}.ADVTSR_KEY ;;
  }

  dimension: advtsr_nm {
    type: string
    sql: ${TABLE}.ADVTSR_NM ;;
  }

  dimension: advtsr_xtrn_id {
    type: string
    sql: ${TABLE}.ADVTSR_XTRN_ID ;;
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

  dimension: ops_advtsr_xtrn_id {
    type: string
    sql: ${TABLE}.OPS_ADVTSR_XTRN_ID ;;
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
