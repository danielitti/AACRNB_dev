view: date_filter {
  derived_table: {
    sql: SELECT   DATE_KEY,
                  DATE_DTTM,
                  TRADING_WEEK_NUMBER,
                  TRADING_DAY_NUMBER_OF_WEEK,
                  TRADING_YEAR,
                  TRADING_YEAR-1 AS TRADING_YEAR_LY,
                  FINANCIAL_YEAR,
                  FINANCIAL_YEAR-1 AS FINANCIAL_YEAR_LY,
                  FINANCIAL_DAY_OF_YEAR,
                  to_char(DATE_DTTM, 'Dy') || ' ' || TO_CHAR(DATE_DTTM, 'DD Mon YYYY') AS HEADER_DAY,
                  to_char(TRADING_WEEK_START_DATE, 'Dy') || ' ' || TO_CHAR(TRADING_WEEK_START_DATE, 'DD Mon YYYY') AS HEADER_TW_START,
                  to_char(TRADING_WEEK_END_DATE, 'Dy') || ' ' || TO_CHAR(TRADING_WEEK_END_DATE, 'DD Mon YYYY') AS HEADER_TW_END
          FROM  {{ _user_attributes["commercial_road_new_business_schema_name"] }}.DIM_DATE
          WHERE COALESCE({% date_start new_business_sale.date_filter_parameter %},
                          CASE  WHEN TO_CHAR(SYSDATE, 'DY') = 'MON' THEN TRUNC(SYSDATE-5)
                                        WHEN TO_CHAR(SYSDATE, 'DY') = 'TUE' THEN TRUNC(SYSDATE-6)
                                        WHEN TO_CHAR(SYSDATE, 'DY') = 'WED' THEN TRUNC(SYSDATE-7)
                                        WHEN TO_CHAR(SYSDATE, 'DY') = 'THU' THEN TRUNC(SYSDATE-8)
                                        WHEN TO_CHAR(SYSDATE, 'DY') = 'FRI' THEN TRUNC(SYSDATE-2)
                                        WHEN TO_CHAR(SYSDATE, 'DY') = 'SAT' THEN TRUNC(SYSDATE-3)
                                        WHEN TO_CHAR(SYSDATE, 'DY') = 'SUN' THEN TRUNC(SYSDATE-4)
                                  END ) =  DATE_DTTM

            ;;
  }

  dimension: date_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.DATE_KEY ;;
  }

  dimension_group: date {
    hidden: yes
    type: time
    timeframes: [date, week, month, raw]
    convert_tz: no
    sql: ${TABLE}.DATE_DTTM ;;
  }

  dimension: trdwk_number {
    hidden: yes
    type: string
    sql: ${TABLE}.TRADING_WEEK_NUMBER ;;
  }

  dimension: trdwk_day_number_of_week {
    hidden: yes
    type: string
    sql: ${TABLE}.TRADING_DAY_NUMBER_OF_WEEK ;;
  }

  dimension: trdwk_year {
    hidden: yes
    type: string
    sql: ${TABLE}.TRADING_YEAR ;;
  }

  dimension: trdwk_year_ly {
    hidden: yes
    type: string
    sql: ${TABLE}.TRADING_YEAR_LY ;;
  }

  dimension: financial_year {
    hidden: yes
    type: string
    sql: ${TABLE}.FINANCIAL_YEAR ;;
  }

  dimension: financial_year_ly {
    hidden: yes
    type: string
    sql: ${TABLE}.FINANCIAL_YEAR_LY ;;
  }

  dimension: financial_day_of_year {
    hidden: yes
    type: string
    sql: ${TABLE}.FINANCIAL_DAY_OF_YEAR ;;
  }

  dimension: header_day {
    #hidden: yes
    type: string
    sql: ${TABLE}.HEADER_DAY ;;
  }

  dimension: header_tw_start {
    hidden: yes
    type: string
    sql: ${TABLE}.HEADER_TW_START ;;
  }

  dimension: header_tw_end {
    hidden: yes
    type: string
    sql: ${TABLE}.HEADER_TW_END ;;
  }

}
