connection: "internal_ma_charter_looker_project"

#include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
explore : mode6{}
view:mode6 {
  derived_table: {
    sql:
        SELECT
           clndr_dt
          , clndr_skey
          , brdcst_yr_mo_nbr
          , brdcst_yr_qtr_nbr

        FROM Internal_MA_CHARTER_looker_Project.AM_CALENDAR_DIM
        ;;


    }
    dimension_group: ClndrDate {
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
    dimension: clndr_skey {
      type: number
      sql: ${TABLE}.CLNDR_SKEY ;;
    }
    dimension: brdcstyr {
      type: string

      sql: ${TABLE}.brdcst_yr_mo_nbr;;
    }
    dimension: brdcstqrtr {
      type: string

      sql: ${TABLE}.brdcst_qtr_mo_nbr;;
    }






  }

  explore:  mode_2{}
  view: mode_2 {

    derived_table: {

      sql:

        SELECT
          c.cmpgn_nm,
          c.cmpgn_nbr,
          c.cmpgn_key,
          c.cmpgn_start_ts::date AS cmpgn_start_dt,
          c.cmpgn_end_ts::date AS cmpgn_end_dt,
          REGEXP_SUBSTR(REGEXP_REPLACE(a.advtsr_xtrn_id, '^[^0-9a-zA-Z]|[^0-9a-zA-Z]$', ''), '[^ _-]+$') AS cust_nbr_eid,
          REGEXP_SUBSTR(REGEXP_REPLACE(a.advtsr_nm, '^[^0-9a-zA-Z]|[^0-9a-zA-Z]$', ''), '[^ _-]+$') AS cust_nbr_anm
        FROM Internal_MA_CHARTER_looker_Project.AAD_CAMPAIGN_DIM c
    ;;
    }
    dimension: cam_number {
      type: string

      sql: ${TABLE}.cmpgn_nm;;
    }

    dimension: cam_number1 {
      type: string

      sql: ${TABLE}.cmpgn_nbr;;


    }
    dimension: cam_key {
      type: string

      sql: ${TABLE}.cmpgn_key;;

    }


    dimension: styart_date {
      type: date

      sql: ${TABLE}.cmpgn_start_dt;;
    }


    dimension: end_date{
      type: date

      sql: ${TABLE}.cmpgn_end_dt;;
    }


    dimension: cust_id{
      type: string

      sql:${TABLE}cust_nbr_eid;;
    }


    dimension: cust_nbr_aam{
      type: string

      sql:${TABLE}cust_nbr_eid;;
    }


























  }
