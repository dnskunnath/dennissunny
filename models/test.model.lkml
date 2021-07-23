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
explore : cmpgn_viewers{}
view:cmpgn_viewers{
  derived_table: {
    sql:
        AS (
    WITH cal AS (
      -- Calendar for date range reference
      WITH dt_mo_qtr AS (
        SELECT
              clndr_dt
            , clndr_skey
          , brdcst_yr_mo_nbr AS mo
          , brdcst_yr_qtr_nbr AS qtr
          , Max(clndr_dt) Over(PARTITION BY mo) AS mo_end
        FROM Internal_MA_CHARTER_looker_Project.AM_CALENDAR_DIM
        GROUP BY 1,2,3,4
      )
      SELECT DISTINCT clndr_skey, clndr_dt AS dt, qtr
      FROM dt_mo_qtr
      WHERE qtr = $var_qtr
        AND CURRENT_DATE() > mo_end + 10
    ) ;;


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


  dimension: mo_end {
    type: string

    sql: ${TABLE}.mo_end;;
  }

}
