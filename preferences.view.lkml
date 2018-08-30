view: preferences {
  sql_table_name: looker.Preferences ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
  }

  dimension_group: application {
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
    sql: ${TABLE}.Application_Date ;;
  }

  dimension: course_name {
    type: string
    sql: ${TABLE}.Course_Name ;;
  }

  dimension: course_session {
    type: string
    sql: ${TABLE}.Course_Session ;;
  }

  dimension: course_year {
    type: string
    sql: ${TABLE}.Course_Year ;;
  }

  dimension: eligible {
    type: string
    sql: ${TABLE}.Eligible ;;
  }

  dimension: expired {
    type: string
    sql: ${TABLE}.Expired ;;
  }

  dimension_group: last_modified {
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
    sql: ${TABLE}.LastModifiedDate ;;
  }

  dimension: opportunity_id {
    type: string
    sql: ${TABLE}.Opportunity_Id ;;
  }

  dimension: pref_num {
    type: number
    sql: ${TABLE}.Pref_Num ;;
  }

  dimension: stage {
    type: string
    sql: ${TABLE}.Stage ;;
  }

  dimension: uac_course_code {
    type: string
    sql: ${TABLE}.UAC_Course_Code ;;
  }

  measure: count {
    type: count
    drill_fields: [id, course_name]
  }
}
