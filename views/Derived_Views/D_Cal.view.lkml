view: cal {
  derived_table: {
    sql:
    SELECT DISTINCT clndr_skey, clndr_dt AS dt, qtr
            FROM ${D_dt_mo_qtr.SQL_TABLE_NAME}
          WHERE qtr = '20211'
              AND CURRENT_DATE() > mo_end + 10

    ;;
  }
  }
