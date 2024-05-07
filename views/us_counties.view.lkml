view: us_counties {
  sql_table_name: `covid19_nyt.us_counties` ;;

  dimension: confirmed_cases {
    type: number
    description: "The total number of confirmed cases of COVID-19"
    sql: ${TABLE}.confirmed_cases ;;
  }
  dimension: county {
    type: string
    description: "County in the specified state"
    sql: ${TABLE}.county ;;
  }
  dimension: county_fips_code {
    type: string
    description: "Standard geographic identifier for the county"
    sql: ${TABLE}.county_fips_code ;;
  }
  dimension_group: date {
    type: time
    description: "Date reported"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: deaths {
    type: number
    description: "The total number of confirmed deaths of COVID-19"
    sql: ${TABLE}.deaths ;;
  }
  dimension: state_name {
    type: string
    description: "State reported"
    sql: ${TABLE}.state_name ;;
  }
  measure: count {
    type: count
    drill_fields: [state_name]
  }
  measure: confirmed_cases_count {
    type: number
    sql: count(${confirmed_cases}) ;;
  }
}
