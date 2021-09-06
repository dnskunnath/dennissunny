view: eda {
  derived_table:
  {
sql: SELECT DISTINCT
    cust.cust_key,
    cust.cust_id,
    cust.cust_nm,
    cust.cust_nbr,
    ordr.ctrc_nbr,
    ordr.ctrc_begn_dt,
    ordr.ctrc_end_dt,
    ordr.eclipse_regn_nm,
    ordr.ord_nbr,
    ordr.ord_totl_amt
    # Change ID 007
    FROM Internal_MA_CHARTER_looker_Project.AM_ORDER_EDA_FACT AS ordr
    JOIN Internal_MA_CHARTER_looker_Project.AM_EDA_CUSTOMER_DIM AS cust
    ON cust.cust_id = ordr.cust_id
    AND cust.eclipse_regn_nm = ordr.eclipse_regn_nm
    ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: cust_key {
    type: number
    sql: ${TABLE}.cust_key ;;
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.cust_id ;;
  }

  dimension: cust_nm {
    type: string
    sql: ${TABLE}.cust_nm ;;
  }

  dimension: cust_nbr {
    type: number
    sql: ${TABLE}.cust_nbr ;;
  }

  dimension: ctrc_nbr {
    type: number
    sql: ${TABLE}.ctrc_nbr ;;
  }

  dimension: ctrc_begn_dt {
    type: date
    datatype: date
    sql: ${TABLE}.ctrc_begn_dt ;;
  }

  dimension: ctrc_end_dt {
    type: date
    datatype: date
    sql: ${TABLE}.ctrc_end_dt ;;
  }

  dimension: eclipse_regn_nm {
    type: string
    sql: ${TABLE}.eclipse_regn_nm ;;
  }

  dimension: ord_nbr {
    type: number
    sql: ${TABLE}.ord_nbr ;;
  }

  dimension: ord_totl_amt {
    type: number
    sql: ${TABLE}.ord_totl_amt ;;
  }

  set: detail {
    fields: [
      cust_key,
      cust_id,
      cust_nm,
      cust_nbr,
      ctrc_nbr,
      ctrc_begn_dt,
      ctrc_end_dt,
      eclipse_regn_nm,
      ord_nbr,
      ord_totl_amt
    ]
  }
}
