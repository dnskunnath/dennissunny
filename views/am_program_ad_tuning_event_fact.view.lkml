view: am_program_ad_tuning_event_fact {
  sql_table_name: `Internal_MA_CHARTER_looker_Project.AM_PROGRAM_AD_TUNING_EVENT_FACT`
    ;;

  dimension: ad_evnt_dur_cnt {
    type: number
    sql: ${TABLE}.AD_EVNT_DUR_CNT ;;
  }

  dimension: ad_evnt_end_ts {
    type: string
    sql: ${TABLE}.AD_EVNT_END_TS ;;
  }

  dimension: ad_evnt_key {
    type: number
    sql: ${TABLE}.AD_EVNT_KEY ;;
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

  dimension: ad_evnt_start_ts {
    type: string
    sql: ${TABLE}.AD_EVNT_START_TS ;;
  }

  dimension: ad_tuning_evnt_dur_cnt {
    type: number
    sql: ${TABLE}.AD_TUNING_EVNT_DUR_CNT ;;
  }

  dimension: ad_tuning_evnt_end_ts {
    type: string
    sql: ${TABLE}.AD_TUNING_EVNT_END_TS ;;
  }

  dimension: ad_tuning_evnt_start_ts {
    type: string
    sql: ${TABLE}.AD_TUNING_EVNT_START_TS ;;
  }

  dimension: am_tuning_evnt_key {
    type: number
    sql: ${TABLE}.AM_TUNING_EVNT_KEY ;;
  }

  dimension: cre_ts {
    type: string
    sql: ${TABLE}.CRE_TS ;;
  }

  dimension: cust_key {
    type: number
    sql: ${TABLE}.CUST_KEY ;;
  }

  dimension: daypart_key {
    type: number
    sql: ${TABLE}.DAYPART_KEY ;;
  }

  dimension: dma_cd_key {
    type: number
    sql: ${TABLE}.DMA_CD_KEY ;;
  }

  dimension: dvic_guid_key {
    type: number
    sql: ${TABLE}.DVIC_GUID_KEY ;;
  }

  dimension: eclipse_regn_nm {
    type: string
    sql: ${TABLE}.ECLIPSE_REGN_NM ;;
  }

  dimension: edi_ord_ctrc_nbr {
    type: number
    sql: ${TABLE}.EDI_ORD_CTRC_NBR ;;
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

  dimension: hha_imps_key {
    type: number
    sql: ${TABLE}.HHA_IMPS_KEY ;;
  }

  dimension: ld_seq_nbr {
    type: number
    sql: ${TABLE}.LD_SEQ_NBR ;;
  }

  dimension: mas_div_key {
    type: number
    sql: ${TABLE}.MAS_DIV_KEY ;;
  }

  dimension: ntwrk_key {
    type: number
    sql: ${TABLE}.NTWRK_KEY ;;
  }

  dimension: ord_line_rate_nbr {
    type: number
    sql: ${TABLE}.ORD_LINE_RATE_NBR ;;
  }

  dimension: ord_nbr {
    type: number
    sql: ${TABLE}.ORD_NBR ;;
  }

  dimension: orig_tuning_evnt_end_ts {
    type: string
    sql: ${TABLE}.ORIG_TUNING_EVNT_END_TS ;;
  }

  dimension: orig_tuning_evnt_start_ts {
    type: string
    sql: ${TABLE}.ORIG_TUNING_EVNT_START_TS ;;
  }

  dimension: prgm_key {
    type: number
    sql: ${TABLE}.PRGM_KEY ;;
  }

  dimension: retl_unit_grp_cd {
    type: string
    sql: ${TABLE}.RETL_UNIT_GRP_CD ;;
  }

  dimension: retl_unit_key {
    type: number
    sql: ${TABLE}.RETL_UNIT_KEY ;;
  }

  dimension: sbsc_guid_key {
    type: number
    sql: ${TABLE}.SBSC_GUID_KEY ;;
  }

  dimension: spot_key {
    type: number
    sql: ${TABLE}.SPOT_KEY ;;
  }

  dimension: spot_lgth {
    type: number
    sql: ${TABLE}.SPOT_LGTH ;;
  }

  dimension: spot_rate_nbr {
    type: number
    sql: ${TABLE}.SPOT_RATE_NBR ;;
  }

  dimension: spot_sale_typ_key {
    type: number
    sql: ${TABLE}.SPOT_SALE_TYP_KEY ;;
  }

  dimension: stn_key {
    type: number
    sql: ${TABLE}.STN_KEY ;;
  }

  dimension: syscode_dma_cd_key {
    type: number
    sql: ${TABLE}.SYSCODE_DMA_CD_KEY ;;
  }

  dimension: syscode_key {
    type: number
    sql: ${TABLE}.SYSCODE_KEY ;;
  }

  dimension: tuning_evnt_end_ts {
    type: string
    sql: ${TABLE}.TUNING_EVNT_END_TS ;;
  }

  dimension: tuning_evnt_start_ts {
    type: string
    sql: ${TABLE}.TUNING_EVNT_START_TS ;;
  }

  dimension: tv_prgm_instnc_key {
    type: number
    sql: ${TABLE}.TV_PRGM_INSTNC_KEY ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
