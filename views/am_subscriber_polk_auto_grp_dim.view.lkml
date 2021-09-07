view: am_subscriber_polk_auto_grp_dim {
  sql_table_name: `Internal_MA_CHARTER_looker_Project.AM_SUBSCRIBER_POLK_AUTO_GRP_DIM`
    ;;

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

  dimension: econ_cars {
    type: yesno
    sql: ${TABLE}.ECON_CARS ;;
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

  dimension: halfton_truck {
    type: yesno
    sql: ${TABLE}.HALFTON_TRUCK ;;
  }

  dimension: in_garage_acura {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_ACURA ;;
  }

  dimension: in_garage_bmw {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_BMW ;;
  }

  dimension: in_garage_buick {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_BUICK ;;
  }

  dimension: in_garage_cadillac {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_CADILLAC ;;
  }

  dimension: in_garage_cars {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_CARS ;;
  }

  dimension: in_garage_chevy {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_CHEVY ;;
  }

  dimension: in_garage_chrylser {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_CHRYLSER ;;
  }

  dimension: in_garage_dodge {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_DODGE ;;
  }

  dimension: in_garage_econ_cars {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_ECON_CARS ;;
  }

  dimension: in_garage_electric_car {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_ELECTRIC_CAR ;;
  }

  dimension: in_garage_ford {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_FORD ;;
  }

  dimension: in_garage_gm {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_GM ;;
  }

  dimension: in_garage_gmc {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_GMC ;;
  }

  dimension: in_garage_halfton_truck {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_HALFTON_TRUCK ;;
  }

  dimension: in_garage_honda {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_HONDA ;;
  }

  dimension: in_garage_hybrid_car {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_HYBRID_CAR ;;
  }

  dimension: in_garage_hyundai {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_HYUNDAI ;;
  }

  dimension: in_garage_jeep {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_JEEP ;;
  }

  dimension: in_garage_kia {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_KIA ;;
  }

  dimension: in_garage_large_suv_minivans {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_LARGE_SUV_MINIVANS ;;
  }

  dimension: in_garage_lexus {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_LEXUS ;;
  }

  dimension: in_garage_lux_compact {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_LUX_COMPACT ;;
  }

  dimension: in_garage_lux_full_size_suv {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_LUX_FULL_SIZE_SUV ;;
  }

  dimension: in_garage_lux_sedan_sports_veh {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_LUX_SEDAN_SPORTS_VEH ;;
  }

  dimension: in_garage_lux_xover_mid_size_suv {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_LUX_XOVER_MID_SIZE_SUV ;;
  }

  dimension: in_garage_mazda {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_MAZDA ;;
  }

  dimension: in_garage_mercedes {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_MERCEDES ;;
  }

  dimension: in_garage_mid_size_truck {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_MID_SIZE_TRUCK ;;
  }

  dimension: in_garage_minivans {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_MINIVANS ;;
  }

  dimension: in_garage_nissan {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_NISSAN ;;
  }

  dimension: in_garage_non_lux_full_size_sedan {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_NON_LUX_FULL_SIZE_SEDAN ;;
  }

  dimension: in_garage_non_lux_large_suv {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_NON_LUX_LARGE_SUV ;;
  }

  dimension: in_garage_non_lux_mid_size_sedan {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_NON_LUX_MID_SIZE_SEDAN ;;
  }

  dimension: in_garage_non_lux_sedan_suv {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_NON_LUX_SEDAN_SUV ;;
  }

  dimension: in_garage_subaru {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_SUBARU ;;
  }

  dimension: in_garage_three_qtr_1_ton_truck {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_THREE_QTR_1TON_TRUCK ;;
  }

  dimension: in_garage_toyota {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_TOYOTA ;;
  }

  dimension: in_garage_truck_suv_xover {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_TRUCK_SUV_XOVER ;;
  }

  dimension: in_garage_trucks {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_TRUCKS ;;
  }

  dimension: in_garage_volkswagen {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_VOLKSWAGEN ;;
  }

  dimension: in_garage_xover_mid_size_suv {
    type: yesno
    sql: ${TABLE}.IN_GARAGE_XOVER_MID_SIZE_SUV ;;
  }

  dimension: large_suv_minivans {
    type: yesno
    sql: ${TABLE}.LARGE_SUV_MINIVANS ;;
  }

  dimension: ld_seq_nbr {
    type: number
    sql: ${TABLE}.LD_SEQ_NBR ;;
  }

  dimension: lux_compact {
    type: yesno
    sql: ${TABLE}.LUX_COMPACT ;;
  }

  dimension: lux_full_size_suv {
    type: yesno
    sql: ${TABLE}.LUX_FULL_SIZE_SUV ;;
  }

  dimension: lux_sedan_sports_veh {
    type: yesno
    sql: ${TABLE}.LUX_SEDAN_SPORTS_VEH ;;
  }

  dimension: lux_xover_mid_size_suv {
    type: yesno
    sql: ${TABLE}.LUX_XOVER_MID_SIZE_SUV ;;
  }

  dimension: mid_size_truck {
    type: yesno
    sql: ${TABLE}.MID_SIZE_TRUCK ;;
  }

  dimension: minivans {
    type: yesno
    sql: ${TABLE}.MINIVANS ;;
  }

  dimension: new_alt_fuel_veh {
    type: yesno
    sql: ${TABLE}.NEW_ALT_FUEL_VEH ;;
  }

  dimension: new_truck {
    type: yesno
    sql: ${TABLE}.NEW_TRUCK ;;
  }

  dimension: non_lux_full_size_sedan {
    type: yesno
    sql: ${TABLE}.NON_LUX_FULL_SIZE_SEDAN ;;
  }

  dimension: non_lux_large_suv {
    type: yesno
    sql: ${TABLE}.NON_LUX_LARGE_SUV ;;
  }

  dimension: non_lux_mid_size_sedan {
    type: yesno
    sql: ${TABLE}.NON_LUX_MID_SIZE_SEDAN ;;
  }

  dimension: non_lux_sedan_suv {
    type: yesno
    sql: ${TABLE}.NON_LUX_SEDAN_SUV ;;
  }

  dimension: sbsc_guid_key {
    type: number
    sql: ${TABLE}.SBSC_GUID_KEY ;;
  }

  dimension: three_qtr_1_ton_truck {
    type: yesno
    sql: ${TABLE}.THREE_QTR_1TON_TRUCK ;;
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

  dimension: used_alt_fuel_veh {
    type: yesno
    sql: ${TABLE}.USED_ALT_FUEL_VEH ;;
  }

  dimension: used_car {
    type: yesno
    sql: ${TABLE}.USED_CAR ;;
  }

  dimension: used_truck_suv_xover {
    type: yesno
    sql: ${TABLE}.USED_TRUCK_SUV_XOVER ;;
  }

  dimension: xover_mid_size_suv {
    type: yesno
    sql: ${TABLE}.XOVER_MID_SIZE_SUV ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
