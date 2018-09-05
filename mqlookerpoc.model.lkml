connection: "salesforcefeed"

# include all the views
include: "*.view"

datagroup: mqlookerpoc_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: mqlookerpoc_default_datagroup

explore: contacts {}

explore: leads {}

explore: opportunities {}

explore: preferences {}
