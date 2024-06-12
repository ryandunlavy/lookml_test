connection: "bq_faa"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: ryan_github_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ryan_github_test_default_datagroup

explore: carriers {}

explore: airports {}

explore: flights {}


### adding some stuff
