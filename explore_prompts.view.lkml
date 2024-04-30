
view: explore_prompts {
  derived_table: {
    sql: SELECT * FROM `elastic-develop-project.llm.explore_prompts` ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: prompt {
    type: string
    sql: ${TABLE}.prompt ;;
  }

  dimension: model_explore {
    type: string
    sql: ${TABLE}.model_explore ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  set: detail {
    fields: [
      description,
      prompt,
      model_explore,
      type
    ]
  }
}
