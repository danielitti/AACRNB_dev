view: policy_type {
  derived_table: {
    sql: SELECT LVL2.POLICY_TYPE_KEY AS POLICY_TYPE_LEVEL_2_KEY,
                LVL2.POLICY_TYPE_LEVEL,
                LVL2.POLICY_TYPE_DESC AS LEVEL_2_POLICY_TYPE_DESC,
                LVL2.POLICY_TYPE_FULL_DESC AS LEVEL_2_POLICY_TYPE_FULL_DESC,
                LVL1.LEVEL_1_POLICY_TYPE_DESC,
                LVL1.LEVEL_1_POLICY_TYPE_FULL_DESC
        FROM  (SELECT * FROM {{_user_attributes["commercial_road_new_business_schema_name"]}}.DIM_POLICY_TYPE WHERE POLICY_TYPE_LEVEL  IN ('0', '2')) LVL2
        LEFT JOIN
              (SELECT PARENT_POLICY_TYPE_KEY, POLICY_TYPE_KEY, POLICY_TYPE_DESC AS LEVEL_1_POLICY_TYPE_DESC , POLICY_TYPE_FULL_DESC AS LEVEL_1_POLICY_TYPE_FULL_DESC FROM {{_user_attributes["commercial_road_new_business_schema_name"]}}.DIM_POLICY_TYPE WHERE POLICY_TYPE_LEVEL IN ('1' ,'0')) LVL1
        ON NVL(LVL2.PARENT_POLICY_TYPE_KEY, LVL2.POLICY_TYPE_KEY)  = LVL1.POLICY_TYPE_KEY
 ;;
  }

  dimension: policy_type_level_2_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.POLICY_TYPE_LEVEL_2_KEY ;;
  }

  dimension: policy_type_level {
    label: "Policy Type Level"
    type: string
    sql: ${TABLE}.POLICY_TYPE_LEVEL ;;
  }

  dimension: policy_type_lvl1_desc {
    label: "Policy Type Lvl 1 Desc"
    group_label: "Policy Type Lvl 1"
    type: string
    sql: ${TABLE}.LEVEL_1_POLICY_TYPE_DESC ;;
  }

  dimension: policy_type_lvl1_full_desc {
    label: "Policy Type Lvl 1 Full Desc"
    group_label: "Policy Type Lvl 1"
    type: string
    sql: ${TABLE}.LEVEL_1_POLICY_TYPE_FULL_DESC ;;
  }

  dimension: policy_type_lvl2_desc {
    label: "Policy Type Lvl 2 Desc"
    group_label: "Policy Type Lvl 2"
    type: string
    sql: ${TABLE}.LEVEL_2_POLICY_TYPE_DESC ;;
  }

  dimension: policy_type_lvl2_full_desc {
    label: "Policy Type Lvl 2 Full Desc"
    group_label: "Policy Type Lvl 2"
    type: string
    sql: ${TABLE}.LEVEL_2_POLICY_TYPE_FULL_DESC ;;
  }

}
