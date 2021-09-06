view: am_zip_dim {
  sql_table_name: `Internal_MA_CHARTER_looker_Project.AM_ZIP_DIM`
    ;;

  dimension: cnty_nm {
    type: string
    sql: ${TABLE}.CNTY_NM ;;
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

  dimension: dst_obsv_ind {
    type: number
    sql: ${TABLE}.DST_OBSV_IND ;;
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

  dimension: st_key {
    type: number
    sql: ${TABLE}.ST_KEY ;;
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

  dimension: zip_cd {
    type: number
    sql: ${TABLE}.ZIP_CD ;;
  }

  dimension: zip_cd_nm {
    type: string
    sql: ${TABLE}.ZIP_CD_NM ;;
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
