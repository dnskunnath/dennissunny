view: am_order_eda_fact {
  sql_table_name: `Internal_MA_CHARTER_looker_Project.AM_ORDER_EDA_FACT`
    ;;

  dimension: agcy_cntc_nm {
    type: string
    sql: ${TABLE}.AGCY_CNTC_NM ;;
  }

  dimension: agcy_id {
    type: number
    sql: ${TABLE}.AGCY_ID ;;
  }

  dimension: agcy_phn_nbr {
    type: string
    sql: ${TABLE}.AGCY_PHN_NBR ;;
  }

  dimension: allw_move_spot_flg {
    type: yesno
    sql: ${TABLE}.ALLW_MOVE_SPOT_FLG ;;
  }

  dimension: auto_make_gd_unplaced_flg {
    type: yesno
    sql: ${TABLE}.AUTO_MAKE_GD_UNPLACED_FLG ;;
  }

  dimension: bill_cycl_cd {
    type: string
    sql: ${TABLE}.BILL_CYCL_CD ;;
  }

  dimension: chg_bill_mode_flg {
    type: yesno
    sql: ${TABLE}.CHG_BILL_MODE_FLG ;;
  }

  dimension: chg_buy_typ_flg {
    type: yesno
    sql: ${TABLE}.CHG_BUY_TYP_FLG ;;
  }

  dimension_group: chg_dt {
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
    sql: ${TABLE}.CHG_DT ;;
  }

  dimension: chg_dt_flg {
    type: yesno
    sql: ${TABLE}.CHG_DT_FLG ;;
  }

  dimension: chg_inv_typ_flg {
    type: yesno
    sql: ${TABLE}.CHG_INV_TYP_FLG ;;
  }

  dimension: chg_ntwrk_flg {
    type: yesno
    sql: ${TABLE}.CHG_NTWRK_FLG ;;
  }

  dimension: cmsn_amt {
    type: number
    sql: ${TABLE}.CMSN_AMT ;;
  }

  dimension: cntc_emal_addr_txt {
    type: string
    sql: ${TABLE}.CNTC_EMAL_ADDR_TXT ;;
  }

  dimension: cntc_fax_nbr {
    type: string
    sql: ${TABLE}.CNTC_FAX_NBR ;;
  }

  dimension: co_enty_id {
    type: number
    sql: ${TABLE}.CO_ENTY_ID ;;
  }

  dimension: coop_flg {
    type: yesno
    sql: ${TABLE}.COOP_FLG ;;
  }

  dimension_group: cre_dt {
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
    sql: ${TABLE}.CRE_DT ;;
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

  dimension_group: ctrc_begn_dt {
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
    sql: ${TABLE}.CTRC_BEGN_DT ;;
  }

  dimension_group: ctrc_end_dt {
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
    sql: ${TABLE}.CTRC_END_DT ;;
  }

  dimension: ctrc_generator_nm {
    type: string
    sql: ${TABLE}.CTRC_GENERATOR_NM ;;
  }

  dimension: ctrc_nbr {
    type: number
    sql: ${TABLE}.CTRC_NBR ;;
  }

  dimension: cust_cntc_nm {
    type: string
    sql: ${TABLE}.CUST_CNTC_NM ;;
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
  }

  dimension: cust_phn_nbr {
    type: string
    sql: ${TABLE}.CUST_PHN_NBR ;;
  }

  dimension: dcnt_id {
    type: number
    sql: ${TABLE}.DCNT_ID ;;
  }

  dimension: dflt_rttn_id {
    type: number
    sql: ${TABLE}.DFLT_RTTN_ID ;;
  }

  dimension: eclipse_regn_nm {
    type: string
    sql: ${TABLE}.ECLIPSE_REGN_NM ;;
  }

  dimension: edi_cust_nbr {
    type: string
    sql: ${TABLE}.EDI_CUST_NBR ;;
  }

  dimension: edi_est_nbr {
    type: number
    sql: ${TABLE}.EDI_EST_NBR ;;
  }

  dimension: edi_exch_id {
    type: number
    sql: ${TABLE}.EDI_EXCH_ID ;;
  }

  dimension: edi_file_flg {
    type: yesno
    sql: ${TABLE}.EDI_FILE_FLG ;;
  }

  dimension: edi_ord_ctrc_nbr {
    type: number
    sql: ${TABLE}.EDI_ORD_CTRC_NBR ;;
  }

  dimension: edi_prod_cd {
    type: number
    sql: ${TABLE}.EDI_PROD_CD ;;
  }

  dimension: edi_xtrn_cd {
    type: string
    sql: ${TABLE}.EDI_XTRN_CD ;;
  }

  dimension: enable_auto_make_gd_mode_flg {
    type: string
    sql: ${TABLE}.ENABLE_AUTO_MAKE_GD_MODE_FLG ;;
  }

  dimension: enable_move_amng_mo_flg {
    type: yesno
    sql: ${TABLE}.ENABLE_MOVE_AMNG_MO_FLG ;;
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

  dimension: invc_dtl_cd {
    type: string
    sql: ${TABLE}.INVC_DTL_CD ;;
  }

  dimension: invc_note_desc {
    type: string
    sql: ${TABLE}.INVC_NOTE_DESC ;;
  }

  dimension: invc_typ_cd {
    type: string
    sql: ${TABLE}.INVC_TYP_CD ;;
  }

  dimension: ld_seq_nbr {
    type: number
    sql: ${TABLE}.LD_SEQ_NBR ;;
  }

  dimension: memo_txt {
    type: string
    sql: ${TABLE}.MEMO_TXT ;;
  }

  dimension: move_spot_pct {
    type: number
    sql: ${TABLE}.MOVE_SPOT_PCT ;;
  }

  dimension: notarize_invc_flg {
    type: yesno
    sql: ${TABLE}.NOTARIZE_INVC_FLG ;;
  }

  dimension: ord_nbr {
    type: number
    sql: ${TABLE}.ORD_NBR ;;
  }

  dimension: ord_rfnc_desc {
    type: string
    sql: ${TABLE}.ORD_RFNC_DESC ;;
  }

  dimension: ord_spot_cnt {
    type: number
    sql: ${TABLE}.ORD_SPOT_CNT ;;
  }

  dimension: ord_totl_amt {
    type: number
    sql: ${TABLE}.ORD_TOTL_AMT ;;
  }

  dimension: ord_ver_nbr {
    type: number
    sql: ${TABLE}.ORD_VER_NBR ;;
  }

  dimension: pkg_id {
    type: number
    sql: ${TABLE}.PKG_ID ;;
  }

  dimension: pltcl_cd {
    type: string
    sql: ${TABLE}.PLTCL_CD ;;
  }

  dimension: po_nbr {
    type: string
    sql: ${TABLE}.PO_NBR ;;
  }

  dimension: pymt_term_id {
    type: number
    sql: ${TABLE}.PYMT_TERM_ID ;;
  }

  dimension: remit_to_id {
    type: number
    sql: ${TABLE}.REMIT_TO_ID ;;
  }

  dimension: rfsh_nbr {
    type: number
    sql: ${TABLE}.RFSH_NBR ;;
  }

  dimension: rvnu_typ_id {
    type: number
    sql: ${TABLE}.RVNU_TYP_ID ;;
  }

  dimension: sale_offc_key {
    type: number
    sql: ${TABLE}.SALE_OFFC_KEY ;;
  }

  dimension: sale_prsn_key {
    type: number
    sql: ${TABLE}.SALE_PRSN_KEY ;;
  }

  dimension: show_on_invc_flg {
    type: yesno
    sql: ${TABLE}.SHOW_ON_INVC_FLG ;;
  }

  dimension: splt_coop_flg {
    type: yesno
    sql: ${TABLE}.SPLT_COOP_FLG ;;
  }

  dimension_group: src_updt_dt {
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
    sql: ${TABLE}.SRC_UPDT_DT ;;
  }

  dimension: stts_cd {
    type: string
    sql: ${TABLE}.STTS_CD ;;
  }

  dimension: tax_cd_id {
    type: number
    sql: ${TABLE}.TAX_CD_ID ;;
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

  dimension_group: ver_updt_dt {
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
    sql: ${TABLE}.VER_UPDT_DT ;;
  }

  dimension: xtrn_ver_nbr {
    type: number
    sql: ${TABLE}.XTRN_VER_NBR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
