view: project_dependency {
  sql_table_name: gcpm2410.project_dependency ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: commit_sha {
    type: string
    sql: ${TABLE}.commit_sha ;;
  }
  dimension: local_imports {
    type: string
    sql: ${TABLE}.local_imports ;;
  }
  dimension: project_id {
    type: string
    sql: ${TABLE}.project_id ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
