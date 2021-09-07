view: base_hh_attr {
  sql_table_name: `Internal_MA_CHARTER_looker_Project.base_hh_attr`
    ;;

  dimension: attr_alias {
    type: string
    sql: ${TABLE}.attr_alias ;;
  }

  dimension: attr_value {
    type: number
    sql: ${TABLE}.attr_value ;;
  }

  dimension: dma_cd_key {
    type: number
    sql: ${TABLE}.dma_cd_key ;;
  }

  dimension: sbsc_guid_key {
    type: number
    sql: ${TABLE}.sbsc_guid_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
