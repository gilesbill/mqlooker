view: contacts {
  sql_table_name: looker.Contacts ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
  }

  dimension: citizen_type {
    type: string
    sql: ${TABLE}.Citizen_Type ;;
  }

  dimension: data_source {
    type: string
    sql: ${TABLE}.DataSource ;;
  }

  dimension: hed_citizenship {
    type: string
    sql: ${TABLE}.hed_Citizenship ;;
  }

  dimension: hed_gender {
    type: string
    sql: ${TABLE}.hed_Gender ;;
  }

  dimension: highest_level_of_education {
    type: string
    sql: ${TABLE}.Highest_level_of_education ;;
  }

  dimension: international {
    type: string
    sql: ${TABLE}.International ;;
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

  dimension: lead_source {
    type: string
    sql: ${TABLE}.LeadSource ;;
  }

  dimension: mailing_city {
    type: string
    sql: ${TABLE}.MailingCity ;;
  }

  dimension: mailing_country {
    type: string
    sql: ${TABLE}.MailingCountry ;;
  }

  dimension: mailing_postal_code {
    type: string
    sql: ${TABLE}.MailingPostalCode ;;
  }

  dimension: mailing_state {
    type: string
    sql: ${TABLE}.MailingState ;;
  }

  dimension: school_name_from_web {
    type: string
    sql: ${TABLE}.School_name_from_web ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
