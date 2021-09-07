view: am_calendar_dim {
  sql_table_name: `Internal_MA_CHARTER_looker_Project.AM_CALENDAR_DIM`
    ;;

  dimension: all_tm_mo_nbr {
    type: number
    sql: ${TABLE}.ALL_TM_MO_NBR ;;
  }

  dimension: brdcst_mo_end_skey {
    type: number
    sql: ${TABLE}.BRDCST_MO_END_SKEY ;;
  }

  dimension: brdcst_mo_start_skey {
    type: number
    sql: ${TABLE}.BRDCST_MO_START_SKEY ;;
  }

  dimension: brdcst_qtr_end_skey {
    type: number
    sql: ${TABLE}.BRDCST_QTR_END_SKEY ;;
  }

  dimension: brdcst_qtr_start_skey {
    type: number
    sql: ${TABLE}.BRDCST_QTR_START_SKEY ;;
  }

  dimension: brdcst_week_of_mo_nbr {
    type: number
    sql: ${TABLE}.BRDCST_WEEK_OF_MO_NBR ;;
  }

  dimension: brdcst_week_of_yr_nbr {
    type: number
    sql: ${TABLE}.BRDCST_WEEK_OF_YR_NBR ;;
  }

  dimension_group: brdcst_wk_end_dt {
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
    sql: ${TABLE}.BRDCST_WK_END_DT ;;
  }

  dimension: brdcst_wk_end_skey {
    type: number
    sql: ${TABLE}.BRDCST_WK_END_SKEY ;;
  }

  dimension_group: brdcst_wk_start_dt {
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
    sql: ${TABLE}.BRDCST_WK_START_DT ;;
  }

  dimension: brdcst_wk_start_skey {
    type: number
    sql: ${TABLE}.BRDCST_WK_START_SKEY ;;
  }

  dimension: brdcst_yr_end_skey {
    type: number
    sql: ${TABLE}.BRDCST_YR_END_SKEY ;;
  }

  dimension: brdcst_yr_mo_nbr {
    type: number
    sql: ${TABLE}.BRDCST_YR_MO_NBR ;;
  }

  dimension: brdcst_yr_mo_wk_of_mo_nbr {
    type: number
    sql: ${TABLE}.BRDCST_YR_MO_WK_OF_MO_NBR ;;
  }

  dimension: brdcst_yr_nbr {
    type: number
    sql: ${TABLE}.BRDCST_YR_NBR ;;
  }

  dimension: brdcst_yr_qtr_nbr {
    type: number
    sql: ${TABLE}.BRDCST_YR_QTR_NBR ;;
  }

  dimension: brdcst_yr_start_skey {
    type: number
    sql: ${TABLE}.BRDCST_YR_START_SKEY ;;
  }

  dimension: brdcst_yr_wk_of_yr_nbr {
    type: number
    sql: ${TABLE}.BRDCST_YR_WK_OF_YR_NBR ;;
  }

  dimension: clndr_day_in_mo_nbr {
    type: number
    sql: ${TABLE}.CLNDR_DAY_IN_MO_NBR ;;
  }

  dimension_group: clndr_dt {
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
    sql: ${TABLE}.CLNDR_DT ;;
  }

  dimension: clndr_dt_nm {
    type: string
    sql: ${TABLE}.CLNDR_DT_NM ;;
  }

  dimension_group: clndr_mo_end_dt {
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
    sql: ${TABLE}.CLNDR_MO_END_DT ;;
  }

  dimension: clndr_mo_end_flg {
    type: yesno
    sql: ${TABLE}.CLNDR_MO_END_FLG ;;
  }

  dimension: clndr_mo_end_skey {
    type: number
    sql: ${TABLE}.CLNDR_MO_END_SKEY ;;
  }

  dimension: clndr_mo_nm {
    type: string
    sql: ${TABLE}.CLNDR_MO_NM ;;
  }

  dimension: clndr_mo_of_yr_nbr {
    type: number
    sql: ${TABLE}.CLNDR_MO_OF_YR_NBR ;;
  }

  dimension: clndr_mo_shrt_nm {
    type: string
    sql: ${TABLE}.CLNDR_MO_SHRT_NM ;;
  }

  dimension_group: clndr_mo_start_dt {
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
    sql: ${TABLE}.CLNDR_MO_START_DT ;;
  }

  dimension: clndr_mo_start_flg {
    type: yesno
    sql: ${TABLE}.CLNDR_MO_START_FLG ;;
  }

  dimension: clndr_mo_start_skey {
    type: number
    sql: ${TABLE}.CLNDR_MO_START_SKEY ;;
  }

  dimension: clndr_mo_yr_nm {
    type: string
    sql: ${TABLE}.CLNDR_MO_YR_NM ;;
  }

  dimension_group: clndr_qtr_end_dt {
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
    sql: ${TABLE}.CLNDR_QTR_END_DT ;;
  }

  dimension: clndr_qtr_end_flg {
    type: yesno
    sql: ${TABLE}.CLNDR_QTR_END_FLG ;;
  }

  dimension: clndr_qtr_end_skey {
    type: number
    sql: ${TABLE}.CLNDR_QTR_END_SKEY ;;
  }

  dimension: clndr_qtr_nm {
    type: string
    sql: ${TABLE}.CLNDR_QTR_NM ;;
  }

  dimension: clndr_qtr_of_yr_nbr {
    type: number
    sql: ${TABLE}.CLNDR_QTR_OF_YR_NBR ;;
  }

  dimension_group: clndr_qtr_start_dt {
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
    sql: ${TABLE}.CLNDR_QTR_START_DT ;;
  }

  dimension: clndr_qtr_start_flg {
    type: yesno
    sql: ${TABLE}.CLNDR_QTR_START_FLG ;;
  }

  dimension: clndr_qtr_start_skey {
    type: number
    sql: ${TABLE}.CLNDR_QTR_START_SKEY ;;
  }

  dimension: clndr_skey {
    type: number
    sql: ${TABLE}.CLNDR_SKEY ;;
  }

  dimension_group: clndr_week_end_dt {
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
    sql: ${TABLE}.CLNDR_WEEK_END_DT ;;
  }

  dimension: clndr_week_end_flg {
    type: yesno
    sql: ${TABLE}.CLNDR_WEEK_END_FLG ;;
  }

  dimension: clndr_week_end_skey {
    type: number
    sql: ${TABLE}.CLNDR_WEEK_END_SKEY ;;
  }

  dimension: clndr_week_mo_yr_nm {
    type: string
    sql: ${TABLE}.CLNDR_WEEK_MO_YR_NM ;;
  }

  dimension: clndr_week_of_mo_nbr {
    type: number
    sql: ${TABLE}.CLNDR_WEEK_OF_MO_NBR ;;
  }

  dimension: clndr_week_of_yr_nbr {
    type: number
    sql: ${TABLE}.CLNDR_WEEK_OF_YR_NBR ;;
  }

  dimension_group: clndr_week_start_dt {
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
    sql: ${TABLE}.CLNDR_WEEK_START_DT ;;
  }

  dimension: clndr_week_start_flg {
    type: yesno
    sql: ${TABLE}.CLNDR_WEEK_START_FLG ;;
  }

  dimension: clndr_week_start_skey {
    type: number
    sql: ${TABLE}.CLNDR_WEEK_START_SKEY ;;
  }

  dimension: clndr_week_yr_nm {
    type: string
    sql: ${TABLE}.CLNDR_WEEK_YR_NM ;;
  }

  dimension_group: clndr_yr_end_dt {
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
    sql: ${TABLE}.CLNDR_YR_END_DT ;;
  }

  dimension: clndr_yr_end_flg {
    type: yesno
    sql: ${TABLE}.CLNDR_YR_END_FLG ;;
  }

  dimension: clndr_yr_end_skey {
    type: number
    sql: ${TABLE}.CLNDR_YR_END_SKEY ;;
  }

  dimension: clndr_yr_mo_nbr {
    type: number
    sql: ${TABLE}.CLNDR_YR_MO_NBR ;;
  }

  dimension: clndr_yr_mo_nm {
    type: string
    sql: ${TABLE}.CLNDR_YR_MO_NM ;;
  }

  dimension: clndr_yr_mo_week_nbr {
    type: number
    sql: ${TABLE}.CLNDR_YR_MO_WEEK_NBR ;;
  }

  dimension: clndr_yr_mo_wk_of_mo_nbr {
    type: number
    sql: ${TABLE}.CLNDR_YR_MO_WK_OF_MO_NBR ;;
  }

  dimension: clndr_yr_nbr {
    type: number
    sql: ${TABLE}.CLNDR_YR_NBR ;;
  }

  dimension: clndr_yr_nm {
    type: number
    sql: ${TABLE}.CLNDR_YR_NM ;;
  }

  dimension: clndr_yr_qtr_nbr {
    type: number
    sql: ${TABLE}.CLNDR_YR_QTR_NBR ;;
  }

  dimension: clndr_yr_qtr_nm {
    type: string
    sql: ${TABLE}.CLNDR_YR_QTR_NM ;;
  }

  dimension_group: clndr_yr_start_dt {
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
    sql: ${TABLE}.CLNDR_YR_START_DT ;;
  }

  dimension: clndr_yr_start_flg {
    type: yesno
    sql: ${TABLE}.CLNDR_YR_START_FLG ;;
  }

  dimension: clndr_yr_start_skey {
    type: number
    sql: ${TABLE}.CLNDR_YR_START_SKEY ;;
  }

  dimension: clndr_yr_week_nbr {
    type: number
    sql: ${TABLE}.CLNDR_YR_WEEK_NBR ;;
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

  dimension: crnt_mtd_flg {
    type: yesno
    sql: ${TABLE}.CRNT_MTD_FLG ;;
  }

  dimension: crnt_qtd_flg {
    type: yesno
    sql: ${TABLE}.CRNT_QTD_FLG ;;
  }

  dimension: crnt_tral_12_mo_flg {
    type: yesno
    sql: ${TABLE}.CRNT_TRAL_12_MO_FLG ;;
  }

  dimension: crnt_tral_30_day_flg {
    type: yesno
    sql: ${TABLE}.CRNT_TRAL_30_DAY_FLG ;;
  }

  dimension: crnt_tral_60_day_flg {
    type: yesno
    sql: ${TABLE}.CRNT_TRAL_60_DAY_FLG ;;
  }

  dimension: crnt_tral_90_day_flg {
    type: yesno
    sql: ${TABLE}.CRNT_TRAL_90_DAY_FLG ;;
  }

  dimension: crnt_ytd_flg {
    type: yesno
    sql: ${TABLE}.CRNT_YTD_FLG ;;
  }

  dimension: day_key {
    type: number
    sql: ${TABLE}.DAY_KEY ;;
  }

  dimension: day_of_mo_nbr {
    type: number
    sql: ${TABLE}.DAY_OF_MO_NBR ;;
  }

  dimension: day_of_qtr_nbr {
    type: number
    sql: ${TABLE}.DAY_OF_QTR_NBR ;;
  }

  dimension: day_of_week_nbr {
    type: number
    sql: ${TABLE}.DAY_OF_WEEK_NBR ;;
  }

  dimension: day_of_week_nm {
    type: string
    sql: ${TABLE}.DAY_OF_WEEK_NM ;;
  }

  dimension: day_of_week_shrt_nm {
    type: string
    sql: ${TABLE}.DAY_OF_WEEK_SHRT_NM ;;
  }

  dimension: day_of_yr_nbr {
    type: number
    sql: ${TABLE}.DAY_OF_YR_NBR ;;
  }

  dimension_group: fmth_end_dt {
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
    sql: ${TABLE}.FMTH_END_DT ;;
  }

  dimension: fmth_end_flg {
    type: yesno
    sql: ${TABLE}.FMTH_END_FLG ;;
  }

  dimension: fmth_end_skey {
    type: number
    sql: ${TABLE}.FMTH_END_SKEY ;;
  }

  dimension: fmth_of_yr_nbr {
    type: number
    sql: ${TABLE}.FMTH_OF_YR_NBR ;;
  }

  dimension_group: fmth_start_dt {
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
    sql: ${TABLE}.FMTH_START_DT ;;
  }

  dimension: fmth_start_flg {
    type: yesno
    sql: ${TABLE}.FMTH_START_FLG ;;
  }

  dimension: fmth_start_skey {
    type: number
    sql: ${TABLE}.FMTH_START_SKEY ;;
  }

  dimension_group: fqtr_end_dt {
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
    sql: ${TABLE}.FQTR_END_DT ;;
  }

  dimension: fqtr_end_flg {
    type: yesno
    sql: ${TABLE}.FQTR_END_FLG ;;
  }

  dimension: fqtr_end_skey {
    type: number
    sql: ${TABLE}.FQTR_END_SKEY ;;
  }

  dimension: fqtr_of_yr_nbr {
    type: number
    sql: ${TABLE}.FQTR_OF_YR_NBR ;;
  }

  dimension_group: fqtr_start_dt {
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
    sql: ${TABLE}.FQTR_START_DT ;;
  }

  dimension: fqtr_start_flg {
    type: yesno
    sql: ${TABLE}.FQTR_START_FLG ;;
  }

  dimension: fqtr_start_skey {
    type: number
    sql: ${TABLE}.FQTR_START_SKEY ;;
  }

  dimension_group: fwk_end_dt {
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
    sql: ${TABLE}.FWK_END_DT ;;
  }

  dimension: fwk_end_flg {
    type: yesno
    sql: ${TABLE}.FWK_END_FLG ;;
  }

  dimension: fwk_end_skey {
    type: number
    sql: ${TABLE}.FWK_END_SKEY ;;
  }

  dimension: fwk_of_mo_nbr {
    type: number
    sql: ${TABLE}.FWK_OF_MO_NBR ;;
  }

  dimension: fwk_of_yr {
    type: number
    sql: ${TABLE}.FWK_OF_YR ;;
  }

  dimension_group: fwk_start_dt {
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
    sql: ${TABLE}.FWK_START_DT ;;
  }

  dimension: fwk_start_flg {
    type: yesno
    sql: ${TABLE}.FWK_START_FLG ;;
  }

  dimension: fwk_start_skey {
    type: number
    sql: ${TABLE}.FWK_START_SKEY ;;
  }

  dimension_group: fyr_end_dt {
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
    sql: ${TABLE}.FYR_END_DT ;;
  }

  dimension: fyr_end_flg {
    type: yesno
    sql: ${TABLE}.FYR_END_FLG ;;
  }

  dimension: fyr_end_skey {
    type: number
    sql: ${TABLE}.FYR_END_SKEY ;;
  }

  dimension: fyr_mo_nm {
    type: string
    sql: ${TABLE}.FYR_MO_NM ;;
  }

  dimension: fyr_mo_week_nm {
    type: string
    sql: ${TABLE}.FYR_MO_WEEK_NM ;;
  }

  dimension: fyr_nbr {
    type: number
    sql: ${TABLE}.FYR_NBR ;;
  }

  dimension: fyr_nm {
    type: number
    sql: ${TABLE}.FYR_NM ;;
  }

  dimension: fyr_qtr_nm {
    type: string
    sql: ${TABLE}.FYR_QTR_NM ;;
  }

  dimension_group: fyr_start_dt {
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
    sql: ${TABLE}.FYR_START_DT ;;
  }

  dimension: fyr_start_flg {
    type: yesno
    sql: ${TABLE}.FYR_START_FLG ;;
  }

  dimension: fyr_start_skey {
    type: number
    sql: ${TABLE}.FYR_START_SKEY ;;
  }

  dimension: holiday_corporate_flg {
    type: yesno
    sql: ${TABLE}.HOLIDAY_CORPORATE_FLG ;;
  }

  dimension: holiday_us_flag {
    type: yesno
    sql: ${TABLE}.HOLIDAY_US_FLAG ;;
  }

  dimension: holiday_us_nm {
    type: string
    sql: ${TABLE}.HOLIDAY_US_NM ;;
  }

  dimension: jdt_nbr {
    type: number
    sql: ${TABLE}.JDT_NBR ;;
  }

  dimension_group: prev_business_day_corporate {
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
    sql: ${TABLE}.PREV_BUSINESS_DAY_CORPORATE ;;
  }

  dimension_group: rpt_crnt_week_strt_dt {
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
    sql: ${TABLE}.RPT_CRNT_WEEK_STRT_DT ;;
  }

  dimension_group: rpt_prev_week_strt_dt {
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
    sql: ${TABLE}.RPT_PREV_WEEK_STRT_DT ;;
  }

  dimension_group: rpt_prev_yr_crnt_week_strt_dt {
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
    sql: ${TABLE}.RPT_PREV_YR_CRNT_WEEK_STRT_DT ;;
  }

  dimension_group: rpt_prev_yr_dt {
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
    sql: ${TABLE}.RPT_PREV_YR_DT ;;
  }

  dimension: rpt_week_of_yr_nbr {
    type: number
    sql: ${TABLE}.RPT_WEEK_OF_YR_NBR ;;
  }

  dimension: rpt_yr_nbr {
    type: number
    sql: ${TABLE}.RPT_YR_NBR ;;
  }

  dimension: same_day_2_mo_ago_skey {
    type: number
    sql: ${TABLE}.SAME_DAY_2_MO_AGO_SKEY ;;
  }

  dimension: same_day_2_mo_lt_skey {
    type: number
    sql: ${TABLE}.SAME_DAY_2_MO_LT_SKEY ;;
  }

  dimension: same_day_lst_mo_skey {
    type: number
    sql: ${TABLE}.SAME_DAY_LST_MO_SKEY ;;
  }

  dimension: same_day_lst_qtr_skey {
    type: number
    sql: ${TABLE}.SAME_DAY_LST_QTR_SKEY ;;
  }

  dimension: same_day_lst_yr_skey {
    type: number
    sql: ${TABLE}.SAME_DAY_LST_YR_SKEY ;;
  }

  dimension: same_day_nxt_mo_skey {
    type: number
    sql: ${TABLE}.SAME_DAY_NXT_MO_SKEY ;;
  }

  dimension: same_day_nxt_qtr_skey {
    type: number
    sql: ${TABLE}.SAME_DAY_NXT_QTR_SKEY ;;
  }

  dimension: same_day_nxt_yr_skey {
    type: number
    sql: ${TABLE}.SAME_DAY_NXT_YR_SKEY ;;
  }

  dimension: tdy_flg {
    type: yesno
    sql: ${TABLE}.TDY_FLG ;;
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

  dimension_group: week_end_fri_end_dt {
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
    sql: ${TABLE}.WEEK_END_FRI_END_DT ;;
  }

  dimension: week_end_fri_end_skey {
    type: number
    sql: ${TABLE}.WEEK_END_FRI_END_SKEY ;;
  }

  dimension_group: week_end_fri_start_dt {
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
    sql: ${TABLE}.WEEK_END_FRI_START_DT ;;
  }

  dimension: week_end_fri_start_skey {
    type: number
    sql: ${TABLE}.WEEK_END_FRI_START_SKEY ;;
  }

  dimension_group: week_end_sat_end_dt {
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
    sql: ${TABLE}.WEEK_END_SAT_END_DT ;;
  }

  dimension: week_end_sat_end_skey {
    type: number
    sql: ${TABLE}.WEEK_END_SAT_END_SKEY ;;
  }

  dimension_group: week_end_sat_start_dt {
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
    sql: ${TABLE}.WEEK_END_SAT_START_DT ;;
  }

  dimension: week_end_sat_start_skey {
    type: number
    sql: ${TABLE}.WEEK_END_SAT_START_SKEY ;;
  }

  dimension: weekday_flg {
    type: yesno
    sql: ${TABLE}.WEEKDAY_FLG ;;
  }

  dimension: ystrdy_flg {
    type: yesno
    sql: ${TABLE}.YSTRDY_FLG ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
