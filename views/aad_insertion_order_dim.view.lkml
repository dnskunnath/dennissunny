view: aad_insertion_order_dim {
  sql_table_name: `Internal_MA_CHARTER_looker_Project.AAD_INSERTION_ORDER_DIM`
    ;;

  dimension: active_ind {
    type: number
    sql: ${TABLE}.ACTIVE_IND ;;
  }

  dimension: cmpgn_key {
    type: number
    sql: ${TABLE}.CMPGN_KEY ;;
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

  dimension: insr_ord_bdgt_imps_cnt {
    type: number
    sql: ${TABLE}.INSR_ORD_BDGT_IMPS_CNT ;;
  }

  dimension: insr_ord_clnt_po_id {
    type: string
    sql: ${TABLE}.INSR_ORD_CLNT_PO_ID ;;
  }

  dimension_group: insr_ord_end_ts {
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
    sql: ${TABLE}.INSR_ORD_END_TS ;;
  }

  dimension: insr_ord_id {
    type: number
    sql: ${TABLE}.INSR_ORD_ID ;;
  }

  dimension: insr_ord_key {
    type: number
    sql: ${TABLE}.INSR_ORD_KEY ;;
  }

  dimension: insr_ord_nm {
    type: string
    sql: ${TABLE}.INSR_ORD_NM ;;
  }

  dimension: insr_ord_prim_slsrep_nm {
    type: string
    sql: ${TABLE}.INSR_ORD_PRIM_SLSREP_NM ;;
  }

  dimension: insr_ord_prim_trfc_nm {
    type: string
    sql: ${TABLE}.INSR_ORD_PRIM_TRFC_NM ;;
  }

  dimension_group: insr_ord_start_ts {
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
    sql: ${TABLE}.INSR_ORD_START_TS ;;
  }

  dimension: insr_ord_xtrn_id {
    type: string
    sql: ${TABLE}.INSR_ORD_XTRN_ID ;;
  }

  dimension: ld_seq_nbr {
    type: number
    sql: ${TABLE}.LD_SEQ_NBR ;;
  }

  dimension: raw_insr_ord_nm {
    type: string
    sql: ${TABLE}.RAW_INSR_ORD_NM ;;
  }

  dimension: sfid {
    type: string
    sql: ${TABLE}.SFID ;;
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
