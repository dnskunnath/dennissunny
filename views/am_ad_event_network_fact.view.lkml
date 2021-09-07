view: am_ad_event_network_fact {
  sql_table_name: `Internal_MA_CHARTER_looker_Project.AM_AD_EVENT_NETWORK_FACT`
    ;;

  dimension: ad_evnt_dur_cnt {
    type: number
    sql: ${TABLE}.AD_EVNT_DUR_CNT ;;
  }

  dimension_group: ad_evnt_end_ts {
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
    sql: ${TABLE}.AD_EVNT_END_TS ;;
  }

  dimension_group: ad_evnt_intrvl_ts {
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
    sql: ${TABLE}.AD_EVNT_INTRVL_TS ;;
  }

  dimension: ad_evnt_key {
    type: number
    sql: ${TABLE}.AD_EVNT_KEY ;;
  }

  dimension_group: ad_evnt_sched_intrvl_ts {
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
    sql: ${TABLE}.AD_EVNT_SCHED_INTRVL_TS ;;
  }

  dimension_group: ad_evnt_sched_ts {
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
    sql: ${TABLE}.AD_EVNT_SCHED_TS ;;
  }

  dimension_group: ad_evnt_start_dt {
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
    sql: ${TABLE}.AD_EVNT_START_DT ;;
  }

  dimension_group: ad_evnt_start_ts {
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
    sql: ${TABLE}.AD_EVNT_START_TS ;;
  }

  dimension: bill_mode {
    type: string
    sql: ${TABLE}.BILL_MODE ;;
  }

  dimension: bookend_flg {
    type: yesno
    sql: ${TABLE}.BOOKEND_FLG ;;
  }

  dimension: brk_instnc_key {
    type: number
    sql: ${TABLE}.BRK_INSTNC_KEY ;;
  }

  dimension: brk_inv_typ_key {
    type: number
    sql: ${TABLE}.BRK_INV_TYP_KEY ;;
  }

  dimension: brk_item_grp {
    type: number
    sql: ${TABLE}.BRK_ITEM_GRP ;;
  }

  dimension: cmdt_key {
    type: number
    sql: ${TABLE}.CMDT_KEY ;;
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

  dimension: cust_key {
    type: number
    sql: ${TABLE}.CUST_KEY ;;
  }

  dimension: cust_typ {
    type: string
    sql: ${TABLE}.CUST_TYP ;;
  }

  dimension: eclipse_region_nm {
    type: string
    sql: ${TABLE}.ECLIPSE_REGION_NM ;;
  }

  dimension: eda_retl_unit_key {
    type: number
    sql: ${TABLE}.EDA_RETL_UNIT_KEY ;;
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

  dimension: headnet_key {
    type: number
    sql: ${TABLE}.HEADNET_KEY ;;
  }

  dimension: invc_id {
    type: number
    sql: ${TABLE}.INVC_ID ;;
  }

  dimension: ld_seq_nbr {
    type: number
    sql: ${TABLE}.LD_SEQ_NBR ;;
  }

  dimension: log_id {
    type: number
    sql: ${TABLE}.LOG_ID ;;
  }

  dimension: ntwrk_key {
    type: number
    sql: ${TABLE}.NTWRK_KEY ;;
  }

  dimension: ord_line_inv_typ_key {
    type: number
    sql: ${TABLE}.ORD_LINE_INV_TYP_KEY ;;
  }

  dimension: ord_line_nbr {
    type: number
    sql: ${TABLE}.ORD_LINE_NBR ;;
  }

  dimension: ord_line_rate_nbr {
    type: number
    sql: ${TABLE}.ORD_LINE_RATE_NBR ;;
  }

  dimension: ord_line_regn_grp {
    type: string
    sql: ${TABLE}.ORD_LINE_REGN_GRP ;;
  }

  dimension: ord_nbr {
    type: number
    sql: ${TABLE}.ORD_NBR ;;
  }

  dimension: pltfrm_typ_cd {
    type: string
    sql: ${TABLE}.PLTFRM_TYP_CD ;;
  }

  dimension: prio_cd {
    type: number
    sql: ${TABLE}.PRIO_CD ;;
  }

  dimension: regn_key {
    type: number
    sql: ${TABLE}.REGN_KEY ;;
  }

  dimension: retl_unit_cd {
    type: string
    sql: ${TABLE}.RETL_UNIT_CD ;;
  }

  dimension: retl_unit_key {
    type: number
    sql: ${TABLE}.RETL_UNIT_KEY ;;
  }

  dimension: retl_unit_or_regn {
    type: string
    sql: ${TABLE}.RETL_UNIT_OR_REGN ;;
  }

  dimension: rvnu_typ_id {
    type: number
    sql: ${TABLE}.RVNU_TYP_ID ;;
  }

  dimension: sched_sold_flg {
    type: yesno
    sql: ${TABLE}.SCHED_SOLD_FLG ;;
  }

  dimension: spot_key {
    type: number
    sql: ${TABLE}.SPOT_KEY ;;
  }

  dimension: spot_rate_nbr {
    type: number
    sql: ${TABLE}.SPOT_RATE_NBR ;;
  }

  dimension: spot_sale_typ_key {
    type: number
    sql: ${TABLE}.SPOT_SALE_TYP_KEY ;;
  }

  dimension: spot_typ {
    type: string
    sql: ${TABLE}.SPOT_TYP ;;
  }

  dimension: syscode {
    type: number
    sql: ${TABLE}.SYSCODE ;;
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

  dimension: vrfy_flg {
    type: yesno
    sql: ${TABLE}.VRFY_FLG ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
