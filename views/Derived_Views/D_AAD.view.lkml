
view: D_aad {
  derived_table: {
    sql:
  SELECT DISTINCT
              ${D_aad_cmpgn.SQL_TABLE_NAME}.*, Coalesce(b1.cust_nbr, b2.cust_nbr) AS cust_nbr
            LEFT JOIN `Internal_MA_CHARTER_looker_Project.AAD_CAMPAIGN_DIM` b1
                ON b1.cust_nbr = ${D_aad_cmpgn.SQL_TABLE_NAME}.cust_nbr_eid
            LEFT JOIN `Internal_MA_CHARTER_looker_Project.AM_EDA_CUSTOMER_DIM` b2
                ON b2.cust_nbr = ${D_aad_cmpgn.SQL_TABLE_NAME}.cust_nbr_anm
    ;;
  }
}
