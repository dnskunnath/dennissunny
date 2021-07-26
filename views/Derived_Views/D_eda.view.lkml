view: eda {
  derived_table:
  {
sql:SELECT DISTINCT
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
      }
