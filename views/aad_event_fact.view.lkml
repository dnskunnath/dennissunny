view: aad_event_fact {
  sql_table_name: `Internal_MA_CHARTER_looker_Project.AAD_EVENT_FACT`
    ;;

  dimension: ad_evnt_key {
    type: number
    sql: ${TABLE}.AD_EVNT_KEY ;;
  }

  dimension: ad_evnt_typ_cd {
    type: number
    sql: ${TABLE}.AD_EVNT_TYP_CD ;;
  }

  dimension: ad_ntwrk_id {
    type: number
    sql: ${TABLE}.AD_NTWRK_ID ;;
  }

  dimension: ad_unit_key {
    type: number
    sql: ${TABLE}.AD_UNIT_KEY ;;
  }

  dimension: ad_unit_slot_pos_key {
    type: number
    sql: ${TABLE}.AD_UNIT_SLOT_POS_KEY ;;
  }

  dimension: ad_unit_typ_key {
    type: number
    sql: ${TABLE}.AD_UNIT_TYP_KEY ;;
  }

  dimension: advtsr_key {
    type: number
    sql: ${TABLE}.ADVTSR_KEY ;;
  }

  dimension: agcy_key {
    type: number
    sql: ${TABLE}.AGCY_KEY ;;
  }

  dimension: all_evnt_kv_desc {
    type: string
    sql: ${TABLE}.ALL_EVNT_KV_DESC ;;
  }

  dimension: chnl_key {
    type: number
    sql: ${TABLE}.CHNL_KEY ;;
  }

  dimension: cmpgn_key {
    type: number
    sql: ${TABLE}.CMPGN_KEY ;;
  }

  dimension: cntry_key {
    type: number
    sql: ${TABLE}.CNTRY_KEY ;;
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

  dimension: crtv_key {
    type: number
    sql: ${TABLE}.CRTV_KEY ;;
  }

  dimension: crtv_rndtn_key {
    type: number
    sql: ${TABLE}.CRTV_RNDTN_KEY ;;
  }

  dimension: cstm_vstr_id {
    type: string
    sql: ${TABLE}.CSTM_VSTR_ID ;;
  }

  dimension: dma_key {
    type: number
    sql: ${TABLE}.DMA_KEY ;;
  }

  dimension: dvic_typ_cd {
    type: number
    sql: ${TABLE}.DVIC_TYP_CD ;;
  }

  dimension: evnt_dur {
    type: number
    sql: ${TABLE}.EVNT_DUR ;;
  }

  dimension_group: evnt_end_lcl_ts {
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
    sql: ${TABLE}.EVNT_END_LCL_TS ;;
  }

  dimension: evnt_nm {
    type: string
    sql: ${TABLE}.EVNT_NM ;;
  }

  dimension_group: evnt_start_lcl_ts {
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
    sql: ${TABLE}.EVNT_START_LCL_TS ;;
  }

  dimension: evnt_typ_cd {
    type: string
    sql: ${TABLE}.EVNT_TYP_CD ;;
  }

  dimension_group: evnt_utc_dt {
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
    sql: ${TABLE}.EVNT_UTC_DT ;;
  }

  dimension_group: evnt_utc_ts {
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
    sql: ${TABLE}.EVNT_UTC_TS ;;
  }

  dimension: exclude_rec {
    type: number
    sql: ${TABLE}.EXCLUDE_REC ;;
  }

  dimension: insr_ord_key {
    type: number
    sql: ${TABLE}.INSR_ORD_KEY ;;
  }

  dimension: ld_seq_nbr {
    type: number
    sql: ${TABLE}.LD_SEQ_NBR ;;
  }

  dimension: max_qrtl {
    type: number
    sql: ${TABLE}.MAX_QRTL ;;
  }

  dimension: pg_vw_rndm_cd {
    type: string
    sql: ${TABLE}.PG_VW_RNDM_CD ;;
  }

  dimension: plac_key {
    type: number
    sql: ${TABLE}.PLAC_KEY ;;
  }

  dimension: pltfrm_brwsr_key {
    type: number
    sql: ${TABLE}.PLTFRM_BRWSR_KEY ;;
  }

  dimension: pltfrm_dvic_key {
    type: number
    sql: ${TABLE}.PLTFRM_DVIC_KEY ;;
  }

  dimension: pltfrm_os_key {
    type: number
    sql: ${TABLE}.PLTFRM_OS_KEY ;;
  }

  dimension: prtnr_key {
    type: number
    sql: ${TABLE}.PRTNR_KEY ;;
  }

  dimension: prtnr_rltn_cd {
    type: string
    sql: ${TABLE}.PRTNR_RLTN_CD ;;
  }

  dimension: pstl_cd_key {
    type: number
    sql: ${TABLE}.PSTL_CD_KEY ;;
  }

  dimension: rec_id {
    type: string
    sql: ${TABLE}.REC_ID ;;
  }

  dimension: rul_key {
    type: number
    sql: ${TABLE}.RUL_KEY ;;
  }

  dimension: sbsc_dma_cd_key {
    type: number
    sql: ${TABLE}.SBSC_DMA_CD_KEY ;;
  }

  dimension: sbsc_guid_key {
    type: number
    sql: ${TABLE}.SBSC_GUID_KEY ;;
  }

  dimension: sbsc_zip_key {
    type: number
    sql: ${TABLE}.SBSC_ZIP_KEY ;;
  }

  dimension: serv_id {
    type: string
    sql: ${TABLE}.SERV_ID ;;
  }

  dimension: site_key {
    type: number
    sql: ${TABLE}.SITE_KEY ;;
  }

  dimension: site_sctn_key {
    type: number
    sql: ${TABLE}.SITE_SCTN_KEY ;;
  }

  dimension: src_system_cd {
    type: string
    sql: ${TABLE}.SRC_SYSTEM_CD ;;
  }

  dimension: stn_key {
    type: number
    sql: ${TABLE}.STN_KEY ;;
  }

  dimension: tm_pos_sec_val {
    type: number
    sql: ${TABLE}.TM_POS_SEC_VAL ;;
  }

  dimension: trns_id {
    type: string
    sql: ${TABLE}.TRNS_ID ;;
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

  dimension: val_chain_role_flg {
    type: string
    sql: ${TABLE}.VAL_CHAIN_ROLE_FLG ;;
  }

  dimension: vid_asst_key {
    type: number
    sql: ${TABLE}.VID_ASST_KEY ;;
  }

  dimension: vid_play_rndm_cd {
    type: string
    sql: ${TABLE}.VID_PLAY_RNDM_CD ;;
  }

  dimension: vid_srs_key {
    type: number
    sql: ${TABLE}.VID_SRS_KEY ;;
  }

  dimension: vod_asset_key {
    type: number
    sql: ${TABLE}.VOD_ASSET_KEY ;;
  }

  dimension: vstr_ip_addr {
    type: string
    sql: ${TABLE}.VSTR_IP_ADDR ;;
  }

  dimension: vstr_st_prvc_cd {
    type: string
    sql: ${TABLE}.VSTR_ST_PRVC_CD ;;
  }

  dimension: vstr_tm_zn_ofst_mint_val {
    type: number
    sql: ${TABLE}.VSTR_TM_ZN_OFST_MINT_VAL ;;
  }

  dimension: vstr_usr_agnt_desc {
    type: string
    sql: ${TABLE}.VSTR_USR_AGNT_DESC ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
