connection: "internal_ma_charter_looker_project"

# include all the views
include: "/views/**/*.view"

datagroup: int_ma_chrtr_copy_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: int_ma_chrtr_copy_default_datagroup

explore: aad_advertiser_dim {}

explore: aad_campaign_dim {}

explore: aad_event_fact {}

explore: aad_insertion_order_dim {}

explore: am_ad_event_network_fact {}

explore: am_calendar_dim {}

explore: am_device_viewership_grp {}

explore: am_eda_customer_dim {}

explore: am_experian_demographic_dim {}

explore: am_experian_demographic_grp {}

explore: am_order_eda_fact {}

explore: am_program_ad_tuning_event_fact {}

explore: am_region_eda_dim {}

explore: am_retail_unit_hierarchy_dim {}

explore: am_subscriber_dim {}

explore: am_subscriber_polk_auto_grp_dim {}

explore: am_syscode_dim {}

explore: am_zip_dim {}
