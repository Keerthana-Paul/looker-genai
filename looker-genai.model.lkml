connection: "looker-genai"
include: "/explore_prompts.view.lkml"
#you can use the sample-bigquery-connection if you are using Looker Core on GCP and give permission for the looker SA as BigQuery Editor on llm dataset.
#connection: "sample-bigquery-connection"
explore: explore_prompts {}
