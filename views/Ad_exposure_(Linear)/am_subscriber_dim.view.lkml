view: am_subscriber_dim {
  sql_table_name: `Internal_MA_CHARTER_looker_Project.AM_SUBSCRIBER_DIM`
    ;;

  dimension: bill_div_key {
    type: number
    sql: ${TABLE}.BILL_DIV_KEY ;;
  }

  dimension: bulk_flg {
    type: yesno
    sql: ${TABLE}.BULK_FLG ;;
  }

  dimension: bulk_type_cd {
    type: string
    sql: ${TABLE}.BULK_TYPE_CD ;;
  }

  dimension: cinemax_flag {
    type: yesno
    sql: ${TABLE}.CINEMAX_FLAG ;;
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

  dimension: encr_flag {
    type: yesno
    sql: ${TABLE}.ENCR_FLAG ;;
  }

  dimension: epix_flag {
    type: yesno
    sql: ${TABLE}.EPIX_FLAG ;;
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

  dimension: free_flg {
    type: yesno
    sql: ${TABLE}.FREE_FLG ;;
  }

  dimension: hbo_flag {
    type: yesno
    sql: ${TABLE}.HBO_FLAG ;;
  }

  dimension: hotel_flg {
    type: yesno
    sql: ${TABLE}.HOTEL_FLG ;;
  }

  dimension_group: internet_cnct_dt {
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
    sql: ${TABLE}.INTERNET_CNCT_DT ;;
  }

  dimension_group: internet_discnct_dt {
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
    sql: ${TABLE}.INTERNET_DISCNCT_DT ;;
  }

  dimension: internet_flg_xbi {
    type: yesno
    sql: ${TABLE}.INTERNET_FLG_XBI ;;
  }

  dimension: ld_seq_nbr {
    type: number
    sql: ${TABLE}.LD_SEQ_NBR ;;
  }

  dimension: legacy_co_nm {
    type: string
    sql: ${TABLE}.LEGACY_CO_NM ;;
  }

  dimension_group: mobile_cnct_dt {
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
    sql: ${TABLE}.MOBILE_CNCT_DT ;;
  }

  dimension_group: mobile_discnct_dt {
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
    sql: ${TABLE}.MOBILE_DISCNCT_DT ;;
  }

  dimension: mobile_srvc_hshld_flg {
    type: yesno
    sql: ${TABLE}.MOBILE_SRVC_HSHLD_FLG ;;
  }

  dimension: nbcu_id {
    type: string
    sql: ${TABLE}.NBCU_ID ;;
  }

  dimension: opt_out_flg_any {
    type: yesno
    sql: ${TABLE}.OPT_OUT_FLG_ANY ;;
  }

  dimension: opt_out_flg_itba {
    type: yesno
    sql: ${TABLE}.OPT_OUT_FLG_ITBA ;;
  }

  dimension: opt_out_flg_tma {
    type: yesno
    sql: ${TABLE}.OPT_OUT_FLG_TMA ;;
  }

  dimension: opt_out_flg_tta {
    type: yesno
    sql: ${TABLE}.OPT_OUT_FLG_TTA ;;
  }

  dimension: premise_key {
    type: number
    sql: ${TABLE}.PREMISE_KEY ;;
  }

  dimension: sbsc_guid_id {
    type: string
    sql: ${TABLE}.SBSC_GUID_ID ;;
  }

  dimension: sbsc_guid_key {
    type: number
    sql: ${TABLE}.SBSC_GUID_KEY ;;
  }

  dimension: sbsc_master_guid_key {
    type: number
    sql: ${TABLE}.SBSC_MASTER_GUID_KEY ;;
  }

  dimension: sbsc_typ_cd {
    type: string
    sql: ${TABLE}.SBSC_TYP_CD ;;
  }

  dimension: showtime_flag {
    type: yesno
    sql: ${TABLE}.SHOWTIME_FLAG ;;
  }

  dimension: starz_flag {
    type: yesno
    sql: ${TABLE}.STARZ_FLAG ;;
  }

  dimension: tier_grp {
    type: string
    sql: ${TABLE}.TIER_GRP ;;
  }

  dimension: tier_nm {
    type: string
    sql: ${TABLE}.TIER_NM ;;
  }

  dimension: tmc_flag {
    type: yesno
    sql: ${TABLE}.TMC_FLAG ;;
  }

  dimension: viacom_id {
    type: string
    sql: ${TABLE}.VIACOM_ID ;;
  }

  dimension: vid_flg_xbi {
    type: yesno
    sql: ${TABLE}.VID_FLG_XBI ;;
  }

  dimension_group: video_cnct_dt {
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
    sql: ${TABLE}.VIDEO_CNCT_DT ;;
  }

  dimension_group: video_discnct_dt {
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
    sql: ${TABLE}.VIDEO_DISCNCT_DT ;;
  }

  dimension_group: voice_cnct_dt {
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
    sql: ${TABLE}.VOICE_CNCT_DT ;;
  }

  dimension_group: voice_discnct_dt {
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
    sql: ${TABLE}.VOICE_DISCNCT_DT ;;
  }

  dimension: voice_flg_xbi {
    type: yesno
    sql: ${TABLE}.VOICE_FLG_XBI ;;
  }

  dimension: xbi_hhld_cnt {
    type: number
    sql: ${TABLE}.XBI_HHLD_CNT ;;
  }

  dimension: xbi_internet_cnt {
    type: number
    sql: ${TABLE}.XBI_INTERNET_CNT ;;
  }

  dimension: xbi_video_cnt {
    type: number
    sql: ${TABLE}.XBI_VIDEO_CNT ;;
  }

  dimension: xbi_voice_cnt {
    type: number
    sql: ${TABLE}.XBI_VOICE_CNT ;;
  }

  dimension: zip_key {
    type: number
    sql: ${TABLE}.ZIP_KEY ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
