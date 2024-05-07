connection: "genaipoc_test"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: looker_extension_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_extension_default_datagroup

#explore: excess_deaths {}

#explore: mask_use_by_county {}

explore: us_counties {
  join: us_states {
    from: us_counties
    relationship: many_to_many
    sql_on:  ${us_counties.state_name} = ${us_states.state_name};;
  }
}
