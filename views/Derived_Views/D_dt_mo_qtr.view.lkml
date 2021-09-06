view: dt_mo_qtr {
    derived_table: {
      sql:
 SELECT
                    clndr_dt
                  , clndr_skey
                , brdcst_yr_mo_nbr AS mo
                , brdcst_yr_qtr_nbr AS qtr
                , Max(clndr_dt) Over(PARTITION BY brdcst_yr_mo_nbr) AS mo_end
              FROM `Internal_MA_CHARTER_looker_Project.AM_CALENDAR_DIM`
              GROUP BY 1,2,3,4 ;;
              }

              dimension:clndr_skey{
                type:string
                sql: ${TABLE}.clndr_skey;;
              }

              }
