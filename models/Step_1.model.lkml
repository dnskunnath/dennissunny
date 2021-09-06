connection: "internal_ma_charter_looker_project"
include: "/views/**/*.view"

datagroup: int_ma_chrtr_copy_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: int_ma_chrtr_copy_default_datagroup
explore:New_Step1_View {}
