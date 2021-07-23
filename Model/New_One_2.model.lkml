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
explore: Ma1 {}
view: Ma1 {
 derived_table: {
  sql: Select

              clndr_dt,
             clndr_skey
          , brdcst_yr_mo_nbr AS mo
          , brdcst_yr_qtr_nbr AS qtr
          , Max(clndr_dt) Over(PARTITION BY mo) AS mo_end
      from   Internal_MA_CHARTER_looker_Project.AM_CALENDAR_DIM
        GROUP BY 1,2,3,4;;
        }



dimension: custdat {
  type: string
  sql: ${TABLE}.clndr_dt ;;
}




}
