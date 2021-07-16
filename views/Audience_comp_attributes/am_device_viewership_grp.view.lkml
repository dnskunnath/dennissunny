view: am_device_viewership_grp {
  sql_table_name: `Internal_MA_CHARTER_looker_Project.AM_DEVICE_VIEWERSHIP_GRP`
    ;;

  dimension: brdcst_qtr_start_skey {
    type: number
    sql: ${TABLE}.BRDCST_QTR_START_SKEY ;;
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

  dimension: dma_cd_key_platform {
    type: number
    sql: ${TABLE}.DMA_CD_KEY_PLATFORM ;;
  }

  dimension: iptv_device_android_phone {
    type: yesno
    sql: ${TABLE}.IPTV_DEVICE_ANDROID_PHONE ;;
  }

  dimension: iptv_device_android_tablet {
    type: yesno
    sql: ${TABLE}.IPTV_DEVICE_ANDROID_TABLET ;;
  }

  dimension: iptv_device_apple_tv {
    type: yesno
    sql: ${TABLE}.IPTV_DEVICE_APPLE_TV ;;
  }

  dimension: iptv_device_ipad {
    type: yesno
    sql: ${TABLE}.IPTV_DEVICE_IPAD ;;
  }

  dimension: iptv_device_iphone {
    type: yesno
    sql: ${TABLE}.IPTV_DEVICE_IPHONE ;;
  }

  dimension: iptv_device_ipod {
    type: yesno
    sql: ${TABLE}.IPTV_DEVICE_IPOD ;;
  }

  dimension: iptv_device_online_portal {
    type: yesno
    sql: ${TABLE}.IPTV_DEVICE_ONLINE_PORTAL ;;
  }

  dimension: iptv_device_other {
    type: yesno
    sql: ${TABLE}.IPTV_DEVICE_OTHER ;;
  }

  dimension: iptv_device_roku {
    type: yesno
    sql: ${TABLE}.IPTV_DEVICE_ROKU ;;
  }

  dimension: iptv_device_samsung_tv {
    type: yesno
    sql: ${TABLE}.IPTV_DEVICE_SAMSUNG_TV ;;
  }

  dimension: iptv_device_xbox {
    type: yesno
    sql: ${TABLE}.IPTV_DEVICE_XBOX ;;
  }

  dimension: iptv_hrs_viewed {
    type: number
    sql: ${TABLE}.IPTV_HRS_VIEWED ;;
  }

  dimension: iptv_tercile_heavy {
    type: yesno
    sql: ${TABLE}.IPTV_TERCILE_HEAVY ;;
  }

  dimension: iptv_tercile_light {
    type: yesno
    sql: ${TABLE}.IPTV_TERCILE_LIGHT ;;
  }

  dimension: iptv_tercile_medium {
    type: yesno
    sql: ${TABLE}.IPTV_TERCILE_MEDIUM ;;
  }

  dimension: iptv_user {
    type: yesno
    sql: ${TABLE}.IPTV_USER ;;
  }

  dimension: iptv_ventile {
    type: string
    sql: ${TABLE}.IPTV_VENTILE ;;
  }

  dimension: ld_seq_nbr {
    type: number
    sql: ${TABLE}.LD_SEQ_NBR ;;
  }

  dimension: linear_hrs_viewed {
    type: number
    sql: ${TABLE}.LINEAR_HRS_VIEWED ;;
  }

  dimension: linear_tercile_heavy {
    type: yesno
    sql: ${TABLE}.LINEAR_TERCILE_HEAVY ;;
  }

  dimension: linear_tercile_light {
    type: yesno
    sql: ${TABLE}.LINEAR_TERCILE_LIGHT ;;
  }

  dimension: linear_tercile_medium {
    type: yesno
    sql: ${TABLE}.LINEAR_TERCILE_MEDIUM ;;
  }

  dimension: linear_user {
    type: yesno
    sql: ${TABLE}.LINEAR_USER ;;
  }

  dimension: linear_ventile {
    type: string
    sql: ${TABLE}.LINEAR_VENTILE ;;
  }

  dimension: sbsc_guid_key {
    type: number
    sql: ${TABLE}.SBSC_GUID_KEY ;;
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

  dimension: vod_hrs_viewed {
    type: number
    sql: ${TABLE}.VOD_HRS_VIEWED ;;
  }

  dimension: vod_tercile_heavy {
    type: yesno
    sql: ${TABLE}.VOD_TERCILE_HEAVY ;;
  }

  dimension: vod_tercile_light {
    type: yesno
    sql: ${TABLE}.VOD_TERCILE_LIGHT ;;
  }

  dimension: vod_tercile_medium {
    type: yesno
    sql: ${TABLE}.VOD_TERCILE_MEDIUM ;;
  }

  dimension: vod_user {
    type: yesno
    sql: ${TABLE}.VOD_USER ;;
  }

  dimension: vod_ventile {
    type: string
    sql: ${TABLE}.VOD_VENTILE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
