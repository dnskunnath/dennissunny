connection: "internal_ma_charter_looker_project"

#include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard


explore : mode2{}
view: mode2 {
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

    dimension: clndr_dt {
      type: string

      sql: ${TABLE}.clndr_dt;;
    }

    dimension: brdcst_yr_mo_nbr {
      type: number

      sql: ${TABLE}.brdcst_yr_mo_nbr;;
    }
    dimension: brdcst_yr_qtr_nbr {
      type: number

      sql: ${TABLE}.brdcst_qtr_mo_nbr;;
    }




    dimension:key {
      type: string

      sql: ${TABLE}.clndr_skey;;
    }
  }

