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
explore : mode1{}
view:mode1 {
  derived_table: {
    sql:
        SELECT
           clndr_dt
          , clndr_skey
          , brdcst_yr_mo_nbr
          , brdcst_yr_qtr_nbr

        FROM am_calendar_dim
        ;;


    }

    dimension: clndrdt {
      type: string

      sql: ${TABLE}.clndr_dt;;
    }

    dimension: brdcstyr {
      type: string

      sql: ${TABLE}.brdcst_yr_mo_nbr;;
    }
    dimension: brdcstqrtr {
      type: string

      sql: ${TABLE}.brdcst_qtr_mo_nbr;;
    }




    dimension:key {
      type: string

      sql: ${TABLE}.clndr_skey;;
    }
    }
