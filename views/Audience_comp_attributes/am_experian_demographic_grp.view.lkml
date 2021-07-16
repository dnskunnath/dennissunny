view: am_experian_demographic_grp {
  sql_table_name: `Internal_MA_CHARTER_looker_Project.AM_EXPERIAN_DEMOGRAPHIC_GRP`
    ;;

  dimension: aarp_member_hl {
    type: yesno
    sql: ${TABLE}.AARP_MEMBER_HL ;;
  }

  dimension: active_investor_hl {
    type: yesno
    sql: ${TABLE}.ACTIVE_INVESTOR_HL ;;
  }

  dimension: active_military_hl {
    type: yesno
    sql: ${TABLE}.ACTIVE_MILITARY_HL ;;
  }

  dimension: african_american {
    type: yesno
    sql: ${TABLE}.AFRICAN_AMERICAN ;;
  }

  dimension: attend_adult_ed_hl {
    type: yesno
    sql: ${TABLE}.ATTEND_ADULT_ED_HL ;;
  }

  dimension: bachelor_degree {
    type: yesno
    sql: ${TABLE}.BACHELOR_DEGREE ;;
  }

  dimension: bought_retail_apparel_hl {
    type: yesno
    sql: ${TABLE}.BOUGHT_RETAIL_APPAREL_HL ;;
  }

  dimension: bought_retail_computer_hl {
    type: yesno
    sql: ${TABLE}.BOUGHT_RETAIL_COMPUTER_HL ;;
  }

  dimension: bought_retail_elec_gadgets_hl {
    type: yesno
    sql: ${TABLE}.BOUGHT_RETAIL_ELEC_GADGETS_HL ;;
  }

  dimension: bought_retail_food_and_beverage_hl {
    type: yesno
    sql: ${TABLE}.BOUGHT_RETAIL_FOOD_AND_BEVERAGE_HL ;;
  }

  dimension: bought_retail_furniture_hl {
    type: yesno
    sql: ${TABLE}.BOUGHT_RETAIL_FURNITURE_HL ;;
  }

  dimension: bought_retail_general_misc_hl {
    type: yesno
    sql: ${TABLE}.BOUGHT_RETAIL_GENERAL_MISC_HL ;;
  }

  dimension: bought_retail_hobby_and_entertainment_hl {
    type: yesno
    sql: ${TABLE}.BOUGHT_RETAIL_HOBBY_AND_ENTERTAINMENT_HL ;;
  }

  dimension: bought_retail_home_maintenance_pdts_hl {
    type: yesno
    sql: ${TABLE}.BOUGHT_RETAIL_HOME_MAINTENANCE_PDTS_HL ;;
  }

  dimension: bought_retail_home_office_pdts_hl {
    type: yesno
    sql: ${TABLE}.BOUGHT_RETAIL_HOME_OFFICE_PDTS_HL ;;
  }

  dimension: bought_retail_kitchen_pdts_hl {
    type: yesno
    sql: ${TABLE}.BOUGHT_RETAIL_KITCHEN_PDTS_HL ;;
  }

  dimension: bought_retail_lawn_and_garden_pdts_hl {
    type: yesno
    sql: ${TABLE}.BOUGHT_RETAIL_LAWN_AND_GARDEN_PDTS_HL ;;
  }

  dimension: bought_retail_outdoor_pdts_hl {
    type: yesno
    sql: ${TABLE}.BOUGHT_RETAIL_OUTDOOR_PDTS_HL ;;
  }

  dimension: bought_retail_personal_health_pdts_hl {
    type: yesno
    sql: ${TABLE}.BOUGHT_RETAIL_PERSONAL_HEALTH_PDTS_HL ;;
  }

  dimension: bought_retail_pet_pdts_hl {
    type: yesno
    sql: ${TABLE}.BOUGHT_RETAIL_PET_PDTS_HL ;;
  }

  dimension: bought_retail_seasonal_pdts_hl {
    type: yesno
    sql: ${TABLE}.BOUGHT_RETAIL_SEASONAL_PDTS_HL ;;
  }

  dimension: bought_retail_shoes_hl {
    type: yesno
    sql: ${TABLE}.BOUGHT_RETAIL_SHOES_HL ;;
  }

  dimension: bought_retail_tools_auto_pdts_hl {
    type: yesno
    sql: ${TABLE}.BOUGHT_RETAIL_TOOLS_AUTO_PDTS_HL ;;
  }

  dimension: bought_retail_toys_hl {
    type: yesno
    sql: ${TABLE}.BOUGHT_RETAIL_TOYS_HL ;;
  }

  dimension: bought_retail_travel_hl {
    type: yesno
    sql: ${TABLE}.BOUGHT_RETAIL_TRAVEL_HL ;;
  }

  dimension: brokerage_acct_owner_hl {
    type: yesno
    sql: ${TABLE}.BROKERAGE_ACCT_OWNER_HL ;;
  }

  dimension: cat_owner_hl {
    type: yesno
    sql: ${TABLE}.CAT_OWNER_HL ;;
  }

  dimension: caucasian_other {
    type: yesno
    sql: ${TABLE}.CAUCASIAN_OTHER ;;
  }

  dimension: coffee_connoisseurs_hl {
    type: yesno
    sql: ${TABLE}.COFFEE_CONNOISSEURS_HL ;;
  }

  dimension: coupon_user_hl {
    type: yesno
    sql: ${TABLE}.COUPON_USER_HL ;;
  }

  dimension_group: cre_ts {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CRE_TS ;;
  }

  dimension: credit_card_hl {
    type: yesno
    sql: ${TABLE}.CREDIT_CARD_HL ;;
  }

  dimension: credit_card_premium_hl {
    type: yesno
    sql: ${TABLE}.CREDIT_CARD_PREMIUM_HL ;;
  }

  dimension: credit_card_store_card_hl {
    type: yesno
    sql: ${TABLE}.CREDIT_CARD_STORE_CARD_HL ;;
  }

  dimension: debit_card_hl {
    type: yesno
    sql: ${TABLE}.DEBIT_CARD_HL ;;
  }

  dimension: diy_hl {
    type: yesno
    sql: ${TABLE}.DIY_HL ;;
  }

  dimension: dog_owner_hl {
    type: yesno
    sql: ${TABLE}.DOG_OWNER_HL ;;
  }

  dimension: donor_to_charities_hl {
    type: yesno
    sql: ${TABLE}.DONOR_TO_CHARITIES_HL ;;
  }

  dimension: drinks_spirits_hl {
    type: yesno
    sql: ${TABLE}.DRINKS_SPIRITS_HL ;;
  }

  dimension: eats_at_family_restaurants_hl {
    type: yesno
    sql: ${TABLE}.EATS_AT_FAMILY_RESTAURANTS_HL ;;
  }

  dimension: eats_at_fast_food_restaurants_hl {
    type: yesno
    sql: ${TABLE}.EATS_AT_FAST_FOOD_RESTAURANTS_HL ;;
  }

  dimension_group: eff_end_dt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.EFF_END_DT ;;
  }

  dimension_group: eff_start_dt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.EFF_START_DT ;;
  }

  dimension: enjoys_gourmet_cooking_hl {
    type: yesno
    sql: ${TABLE}.ENJOYS_GOURMET_COOKING_HL ;;
  }

  dimension: far_east_asian {
    type: yesno
    sql: ${TABLE}.FAR_EAST_ASIAN ;;
  }

  dimension: female {
    type: yesno
    sql: ${TABLE}.FEMALE ;;
  }

  dimension: females_18_34 {
    type: yesno
    sql: ${TABLE}.FEMALES_18_34 ;;
  }

  dimension: females_18_49 {
    type: yesno
    sql: ${TABLE}.FEMALES_18_49 ;;
  }

  dimension: females_25_54 {
    type: yesno
    sql: ${TABLE}.FEMALES_25_54 ;;
  }

  dimension: females_35_49 {
    type: yesno
    sql: ${TABLE}.FEMALES_35_49 ;;
  }

  dimension: females_35_64 {
    type: yesno
    sql: ${TABLE}.FEMALES_35_64 ;;
  }

  dimension: females_50_plus {
    type: yesno
    sql: ${TABLE}.FEMALES_50_PLUS ;;
  }

  dimension: females_55_plus {
    type: yesno
    sql: ${TABLE}.FEMALES_55_PLUS ;;
  }

  dimension: females_65_plus {
    type: yesno
    sql: ${TABLE}.FEMALES_65_PLUS ;;
  }

  dimension: fitness_enthusiast_hl {
    type: yesno
    sql: ${TABLE}.FITNESS_ENTHUSIAST_HL ;;
  }

  dimension: gender_both {
    type: yesno
    sql: ${TABLE}.GENDER_BOTH ;;
  }

  dimension: goes_casino_gambling_hl {
    type: yesno
    sql: ${TABLE}.GOES_CASINO_GAMBLING_HL ;;
  }

  dimension: graduate_degree {
    type: yesno
    sql: ${TABLE}.GRADUATE_DEGREE ;;
  }

  dimension: has_retirement_plan_hl {
    type: yesno
    sql: ${TABLE}.HAS_RETIREMENT_PLAN_HL ;;
  }

  dimension: healthy_living_hl {
    type: yesno
    sql: ${TABLE}.HEALTHY_LIVING_HL ;;
  }

  dimension: hh_id {
    type: string
    sql: ${TABLE}.HH_ID ;;
  }

  dimension: hh_income_100_150_k {
    type: yesno
    sql: ${TABLE}.HH_INCOME_100_150K ;;
  }

  dimension: hh_income_150_200_k {
    type: yesno
    sql: ${TABLE}.HH_INCOME_150_200K ;;
  }

  dimension: hh_income_200_250_k {
    type: yesno
    sql: ${TABLE}.HH_INCOME_200_250K ;;
  }

  dimension: hh_income_25_50_k {
    type: yesno
    sql: ${TABLE}.HH_INCOME_25_50K ;;
  }

  dimension: hh_income_50_75_k {
    type: yesno
    sql: ${TABLE}.HH_INCOME_50_75K ;;
  }

  dimension: hh_income_75_100_k {
    type: yesno
    sql: ${TABLE}.HH_INCOME_75_100K ;;
  }

  dimension: hh_income_gt_250_k {
    type: yesno
    sql: ${TABLE}.HH_INCOME_GT_250K ;;
  }

  dimension: hh_income_lt_25_k {
    type: yesno
    sql: ${TABLE}.HH_INCOME_LT_25K ;;
  }

  dimension: hh_will_spend_on_apparel_hl {
    type: yesno
    sql: ${TABLE}.HH_WILL_SPEND_ON_APPAREL_HL ;;
  }

  dimension: hh_will_spend_on_computers_hl {
    type: yesno
    sql: ${TABLE}.HH_WILL_SPEND_ON_COMPUTERS_HL ;;
  }

  dimension: hh_will_spend_on_electronics_gadgets_hl {
    type: yesno
    sql: ${TABLE}.HH_WILL_SPEND_ON_ELECTRONICS_GADGETS_HL ;;
  }

  dimension: hh_will_spend_on_food_beverage_hl {
    type: yesno
    sql: ${TABLE}.HH_WILL_SPEND_ON_FOOD_BEVERAGE_HL ;;
  }

  dimension: hh_will_spend_on_home_decorating_hl {
    type: yesno
    sql: ${TABLE}.HH_WILL_SPEND_ON_HOME_DECORATING_HL ;;
  }

  dimension: hh_will_spend_on_home_maintenance_hl {
    type: yesno
    sql: ${TABLE}.HH_WILL_SPEND_ON_HOME_MAINTENANCE_HL ;;
  }

  dimension: hh_will_spend_on_home_office_pdts_hl {
    type: yesno
    sql: ${TABLE}.HH_WILL_SPEND_ON_HOME_OFFICE_PDTS_HL ;;
  }

  dimension: hh_will_spend_on_kitchen_supplies_hl {
    type: yesno
    sql: ${TABLE}.HH_WILL_SPEND_ON_KITCHEN_SUPPLIES_HL ;;
  }

  dimension: hh_will_spend_on_lawn_garden_hl {
    type: yesno
    sql: ${TABLE}.HH_WILL_SPEND_ON_LAWN_GARDEN_HL ;;
  }

  dimension: hh_will_spend_on_personal_health_hl {
    type: yesno
    sql: ${TABLE}.HH_WILL_SPEND_ON_PERSONAL_HEALTH_HL ;;
  }

  dimension: hh_will_spend_on_pets_pet_supplies_hl {
    type: yesno
    sql: ${TABLE}.HH_WILL_SPEND_ON_PETS_PET_SUPPLIES_HL ;;
  }

  dimension: hh_will_spend_on_travel_hl {
    type: yesno
    sql: ${TABLE}.HH_WILL_SPEND_ON_TRAVEL_HL ;;
  }

  dimension: high_quality_flag {
    type: yesno
    sql: ${TABLE}.HIGH_QUALITY_FLAG ;;
  }

  dimension: high_school_grad {
    type: yesno
    sql: ${TABLE}.HIGH_SCHOOL_GRAD ;;
  }

  dimension: hispanic {
    type: yesno
    sql: ${TABLE}.HISPANIC ;;
  }

  dimension: homeowner_hl {
    type: yesno
    sql: ${TABLE}.HOMEOWNER_HL ;;
  }

  dimension: hunting_enthusiast_hl {
    type: yesno
    sql: ${TABLE}.HUNTING_ENTHUSIAST_HL ;;
  }

  dimension: inactive_military_hl {
    type: yesno
    sql: ${TABLE}.INACTIVE_MILITARY_HL ;;
  }

  dimension: indian_asian {
    type: yesno
    sql: ${TABLE}.INDIAN_ASIAN ;;
  }

  dimension: laptop_owner_hl {
    type: yesno
    sql: ${TABLE}.LAPTOP_OWNER_HL ;;
  }

  dimension: ld_seq_nbr {
    type: number
    sql: ${TABLE}.LD_SEQ_NBR ;;
  }

  dimension: luxury_hme_goods_shpper_hl {
    type: yesno
    sql: ${TABLE}.LUXURY_HME_GOODS_SHPPER_HL ;;
  }

  dimension: luxury_store_shopper_hl {
    type: yesno
    sql: ${TABLE}.LUXURY_STORE_SHOPPER_HL ;;
  }

  dimension: male {
    type: yesno
    sql: ${TABLE}.MALE ;;
  }

  dimension: males_18_34 {
    type: yesno
    sql: ${TABLE}.MALES_18_34 ;;
  }

  dimension: males_18_49 {
    type: yesno
    sql: ${TABLE}.MALES_18_49 ;;
  }

  dimension: males_25_54 {
    type: yesno
    sql: ${TABLE}.MALES_25_54 ;;
  }

  dimension: males_35_49 {
    type: yesno
    sql: ${TABLE}.MALES_35_49 ;;
  }

  dimension: males_35_64 {
    type: yesno
    sql: ${TABLE}.MALES_35_64 ;;
  }

  dimension: males_50_plus {
    type: yesno
    sql: ${TABLE}.MALES_50_PLUS ;;
  }

  dimension: males_55_plus {
    type: yesno
    sql: ${TABLE}.MALES_55_PLUS ;;
  }

  dimension: males_65_plus {
    type: yesno
    sql: ${TABLE}.MALES_65_PLUS ;;
  }

  dimension: married_likely {
    type: yesno
    sql: ${TABLE}.MARRIED_LIKELY ;;
  }

  dimension: mutual_fund_invester_hl {
    type: yesno
    sql: ${TABLE}.MUTUAL_FUND_INVESTER_HL ;;
  }

  dimension: nbr_of_adults {
    type: string
    sql: ${TABLE}.NBR_OF_ADULTS ;;
  }

  dimension: no_high_school_diploma {
    type: yesno
    sql: ${TABLE}.NO_HIGH_SCHOOL_DIPLOMA ;;
  }

  dimension: on_a_diet_hl {
    type: yesno
    sql: ${TABLE}.ON_A_DIET_HL ;;
  }

  dimension: online_trader_hl {
    type: yesno
    sql: ${TABLE}.ONLINE_TRADER_HL ;;
  }

  dimension: outdoor_enthusiast_hl {
    type: yesno
    sql: ${TABLE}.OUTDOOR_ENTHUSIAST_HL ;;
  }

  dimension: owns_auto_hl {
    type: yesno
    sql: ${TABLE}.OWNS_AUTO_HL ;;
  }

  dimension: persons_18_34 {
    type: yesno
    sql: ${TABLE}.PERSONS_18_34 ;;
  }

  dimension: persons_18_49 {
    type: yesno
    sql: ${TABLE}.PERSONS_18_49 ;;
  }

  dimension: persons_25_54 {
    type: yesno
    sql: ${TABLE}.PERSONS_25_54 ;;
  }

  dimension: persons_35_49 {
    type: yesno
    sql: ${TABLE}.PERSONS_35_49 ;;
  }

  dimension: persons_35_64 {
    type: yesno
    sql: ${TABLE}.PERSONS_35_64 ;;
  }

  dimension: persons_50_plus {
    type: yesno
    sql: ${TABLE}.PERSONS_50_PLUS ;;
  }

  dimension: persons_55_plus {
    type: yesno
    sql: ${TABLE}.PERSONS_55_PLUS ;;
  }

  dimension: persons_65_plus {
    type: yesno
    sql: ${TABLE}.PERSONS_65_PLUS ;;
  }

  dimension: plays_lottery_hl {
    type: yesno
    sql: ${TABLE}.PLAYS_LOTTERY_HL ;;
  }

  dimension: plays_video_games_hl {
    type: yesno
    sql: ${TABLE}.PLAYS_VIDEO_GAMES_HL ;;
  }

  dimension: presence_of_children_no {
    type: yesno
    sql: ${TABLE}.PRESENCE_OF_CHILDREN_NO ;;
  }

  dimension: presence_of_children_yes {
    type: yesno
    sql: ${TABLE}.PRESENCE_OF_CHILDREN_YES ;;
  }

  dimension: renter_hl {
    type: yesno
    sql: ${TABLE}.RENTER_HL ;;
  }

  dimension: sbsc_guid_id {
    type: string
    sql: ${TABLE}.SBSC_GUID_ID ;;
  }

  dimension: sbsc_guid_key {
    type: number
    sql: ${TABLE}.SBSC_GUID_KEY ;;
  }

  dimension: security_system_owner_hl {
    type: yesno
    sql: ${TABLE}.SECURITY_SYSTEM_OWNER_HL ;;
  }

  dimension: single_likely {
    type: yesno
    sql: ${TABLE}.SINGLE_LIKELY ;;
  }

  dimension: some_college {
    type: yesno
    sql: ${TABLE}.SOME_COLLEGE ;;
  }

  dimension: supercenter_shopper_hl {
    type: yesno
    sql: ${TABLE}.SUPERCENTER_SHOPPER_HL ;;
  }

  dimension: tablet_owner_hl {
    type: yesno
    sql: ${TABLE}.TABLET_OWNER_HL ;;
  }

  dimension: union_member_hl {
    type: yesno
    sql: ${TABLE}.UNION_MEMBER_HL ;;
  }

  dimension_group: updt_ts {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.UPDT_TS ;;
  }

  dimension: visits_amusement_pks_hl {
    type: yesno
    sql: ${TABLE}.VISITS_AMUSEMENT_PKS_HL ;;
  }

  dimension: warehouse_club_member_hl {
    type: yesno
    sql: ${TABLE}.WAREHOUSE_CLUB_MEMBER_HL ;;
  }

  dimension: weight_conscious_hl {
    type: yesno
    sql: ${TABLE}.WEIGHT_CONSCIOUS_HL ;;
  }

  dimension: wine_lover_hl {
    type: yesno
    sql: ${TABLE}.WINE_LOVER_HL ;;
  }

  dimension: yng_adult_clothes_shopper_hl {
    type: yesno
    sql: ${TABLE}.YNG_ADULT_CLOTHES_SHOPPER_HL ;;
  }

  dimension: zoo_visitor_hl {
    type: yesno
    sql: ${TABLE}.ZOO_VISITOR_HL ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
