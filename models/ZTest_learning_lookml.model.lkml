connection: "internal_ma_charter_looker_project"

# include all the views
include: "/views/**/*.view"

datagroup: test_learning_lookml_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}



explore: sample_superstore {}