connection: "internal_ma_charter_looker_project"

# include all the views
include: "/views/**/*.view"

datagroup: int_ma_chrtr_copy_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}
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
