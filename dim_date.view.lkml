view: dim_date {
  sql_table_name: SHARED_MRT.DIM_DATE ;;

  dimension: calendar_day_duration {
    type: string
    sql: ${TABLE}.CALENDAR_DAY_DURATION ;;
  }

  dimension: calendar_day_full_name {
    type: string
    sql: ${TABLE}.CALENDAR_DAY_FULL_NAME ;;
  }

  dimension: calendar_day_name {
    type: string
    sql: ${TABLE}.CALENDAR_DAY_NAME ;;
  }

  dimension: calendar_day_number_of_month {
    type: string
    sql: ${TABLE}.CALENDAR_DAY_NUMBER_OF_MONTH ;;
  }

  dimension: calendar_day_number_of_week {
    type: string
    sql: ${TABLE}.CALENDAR_DAY_NUMBER_OF_WEEK ;;
  }

  dimension: calendar_day_number_of_year {
    type: string
    sql: ${TABLE}.CALENDAR_DAY_NUMBER_OF_YEAR ;;
  }

  dimension: calendar_day_short_name {
    type: string
    sql: ${TABLE}.CALENDAR_DAY_SHORT_NAME ;;
  }

  dimension: calendar_half_year_duration {
    type: string
    sql: ${TABLE}.CALENDAR_HALF_YEAR_DURATION ;;
  }

  dimension_group: calendar_half_year_end {
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
    sql: ${TABLE}.CALENDAR_HALF_YEAR_END_DATE ;;
  }

  dimension: calendar_half_year_full_name {
    type: string
    sql: ${TABLE}.CALENDAR_HALF_YEAR_FULL_NAME ;;
  }

  dimension: calendar_half_year_name {
    type: string
    sql: ${TABLE}.CALENDAR_HALF_YEAR_NAME ;;
  }

  dimension: calendar_half_year_number {
    type: string
    sql: ${TABLE}.CALENDAR_HALF_YEAR_NUMBER ;;
  }

  dimension: calendar_half_year_yyyyh {
    type: string
    sql: ${TABLE}.CALENDAR_HALF_YEAR_YYYYH ;;
  }

  dimension: calendar_month_duration {
    type: string
    sql: ${TABLE}.CALENDAR_MONTH_DURATION ;;
  }

  dimension_group: calendar_month_end {
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
    sql: ${TABLE}.CALENDAR_MONTH_END_DATE ;;
  }

  dimension: calendar_month_full_name {
    type: string
    sql: ${TABLE}.CALENDAR_MONTH_FULL_NAME ;;
  }

  dimension: calendar_month_name {
    type: string
    sql: ${TABLE}.CALENDAR_MONTH_NAME ;;
  }

  dimension: calendar_month_number {
    type: string
    sql: ${TABLE}.CALENDAR_MONTH_NUMBER ;;
  }

  dimension: calendar_month_short_name {
    type: string
    sql: ${TABLE}.CALENDAR_MONTH_SHORT_NAME ;;
  }

  dimension: calendar_month_yyyymm {
    type: string
    sql: ${TABLE}.CALENDAR_MONTH_YYYYMM ;;
  }

  dimension: calendar_quarter_duration {
    type: string
    sql: ${TABLE}.CALENDAR_QUARTER_DURATION ;;
  }

  dimension_group: calendar_quarter_end {
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
    sql: ${TABLE}.CALENDAR_QUARTER_END_DATE ;;
  }

  dimension: calendar_quarter_full_name {
    type: string
    sql: ${TABLE}.CALENDAR_QUARTER_FULL_NAME ;;
  }

  dimension: calendar_quarter_name {
    type: string
    sql: ${TABLE}.CALENDAR_QUARTER_NAME ;;
  }

  dimension: calendar_quarter_number {
    type: string
    sql: ${TABLE}.CALENDAR_QUARTER_NUMBER ;;
  }

  dimension: calendar_quarter_yyyyq {
    type: string
    sql: ${TABLE}.CALENDAR_QUARTER_YYYYQ ;;
  }

  dimension: calendar_week_duration {
    type: string
    sql: ${TABLE}.CALENDAR_WEEK_DURATION ;;
  }

  dimension_group: calendar_week_end {
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
    sql: ${TABLE}.CALENDAR_WEEK_END_DATE ;;
  }

  dimension: calendar_week_full_name {
    type: string
    sql: ${TABLE}.CALENDAR_WEEK_FULL_NAME ;;
  }

  dimension: calendar_week_number {
    type: string
    sql: ${TABLE}.CALENDAR_WEEK_NUMBER ;;
  }

  dimension: calendar_week_short_name {
    type: string
    sql: ${TABLE}.CALENDAR_WEEK_SHORT_NAME ;;
  }

  dimension: calendar_year {
    type: string
    sql: ${TABLE}.CALENDAR_YEAR ;;
  }

  dimension: calendar_year_duration {
    type: string
    sql: ${TABLE}.CALENDAR_YEAR_DURATION ;;
  }

  dimension_group: calendar_year_end {
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
    sql: ${TABLE}.CALENDAR_YEAR_END_DATE ;;
  }

  dimension_group: date_dttm {
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
    sql: ${TABLE}.DATE_DTTM ;;
  }

  dimension: date_key {
    type: string
    sql: ${TABLE}.DATE_KEY ;;
  }

  dimension: date_yyyymmdd {
    type: string
    sql: ${TABLE}.DATE_YYYYMMDD ;;
  }

  dimension: financial_day_of_year {
    type: string
    sql: ${TABLE}.FINANCIAL_DAY_OF_YEAR ;;
  }

  dimension: financial_half_year_duration {
    type: string
    sql: ${TABLE}.FINANCIAL_HALF_YEAR_DURATION ;;
  }

  dimension_group: financial_half_year_end {
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
    sql: ${TABLE}.FINANCIAL_HALF_YEAR_END_DATE ;;
  }

  dimension: financial_half_year_full_name {
    type: string
    sql: ${TABLE}.FINANCIAL_HALF_YEAR_FULL_NAME ;;
  }

  dimension: financial_half_year_name {
    type: string
    sql: ${TABLE}.FINANCIAL_HALF_YEAR_NAME ;;
  }

  dimension: financial_half_year_number {
    type: string
    sql: ${TABLE}.FINANCIAL_HALF_YEAR_NUMBER ;;
  }

  dimension: financial_half_year_yyyyh {
    type: string
    sql: ${TABLE}.FINANCIAL_HALF_YEAR_YYYYH ;;
  }

  dimension: financial_month_duration {
    type: string
    sql: ${TABLE}.FINANCIAL_MONTH_DURATION ;;
  }

  dimension_group: financial_month_end {
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
    sql: ${TABLE}.FINANCIAL_MONTH_END_DATE ;;
  }

  dimension: financial_month_number {
    type: string
    sql: ${TABLE}.FINANCIAL_MONTH_NUMBER ;;
  }

  dimension_group: financial_month_start {
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
    sql: ${TABLE}.FINANCIAL_MONTH_START_DATE ;;
  }

  dimension: financial_month_yyyymm {
    type: string
    sql: ${TABLE}.FINANCIAL_MONTH_YYYYMM ;;
  }

  dimension: financial_quarter_duration {
    type: string
    sql: ${TABLE}.FINANCIAL_QUARTER_DURATION ;;
  }

  dimension_group: financial_quarter_end {
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
    sql: ${TABLE}.FINANCIAL_QUARTER_END_DATE ;;
  }

  dimension: financial_quarter_full_name {
    type: string
    sql: ${TABLE}.FINANCIAL_QUARTER_FULL_NAME ;;
  }

  dimension: financial_quarter_name {
    type: string
    sql: ${TABLE}.FINANCIAL_QUARTER_NAME ;;
  }

  dimension: financial_quarter_number {
    type: string
    sql: ${TABLE}.FINANCIAL_QUARTER_NUMBER ;;
  }

  dimension: financial_quarter_yyyyq {
    type: string
    sql: ${TABLE}.FINANCIAL_QUARTER_YYYYQ ;;
  }

  dimension: financial_year {
    type: string
    sql: ${TABLE}.FINANCIAL_YEAR ;;
  }

  dimension: financial_year_name {
    type: string
    sql: ${TABLE}.FINANCIAL_YEAR_NAME ;;
  }

  dimension_group: interface_dttm {
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
    sql: ${TABLE}.INTERFACE_DTTM ;;
  }

  dimension: is_bank_holiday {
    type: string
    sql: ${TABLE}.IS_BANK_HOLIDAY ;;
  }

  dimension: is_weekday {
    type: string
    sql: ${TABLE}.IS_WEEKDAY ;;
  }

  dimension: is_weekend {
    type: string
    sql: ${TABLE}.IS_WEEKEND ;;
  }

  dimension_group: process_dttm {
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
    sql: ${TABLE}.PROCESS_DTTM ;;
  }

  dimension: source_system_key {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM_KEY ;;
  }

  dimension: trading_day_number_of_week {
    type: string
    sql: ${TABLE}.TRADING_DAY_NUMBER_OF_WEEK ;;
  }

  dimension_group: trading_week_end {
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
    sql: ${TABLE}.TRADING_WEEK_END_DATE ;;
  }

  dimension: trading_week_name {
    type: string
    sql: ${TABLE}.TRADING_WEEK_NAME ;;
  }

  dimension: trading_week_number {
    type: string
    sql: ${TABLE}.TRADING_WEEK_NUMBER ;;
  }

  dimension_group: trading_week_start {
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
    sql: ${TABLE}.TRADING_WEEK_START_DATE ;;
  }

  dimension: trading_week_yyyyww {
    type: string
    sql: ${TABLE}.TRADING_WEEK_YYYYWW ;;
  }

  dimension: trading_year {
    type: string
    sql: ${TABLE}.TRADING_YEAR ;;
  }

  dimension: trading_year_name {
    type: string
    sql: ${TABLE}.TRADING_YEAR_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      trading_year_name,
      calendar_day_short_name,
      calendar_day_name,
      calendar_day_full_name,
      calendar_week_short_name,
      calendar_week_full_name,
      calendar_month_short_name,
      calendar_month_name,
      calendar_month_full_name,
      calendar_quarter_name,
      calendar_quarter_full_name,
      calendar_half_year_name,
      calendar_half_year_full_name,
      trading_week_name,
      financial_quarter_name,
      financial_quarter_full_name,
      financial_half_year_name,
      financial_half_year_full_name,
      financial_year_name
    ]
  }
}
