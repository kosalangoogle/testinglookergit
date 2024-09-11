view: user_ide_project_state {
  sql_table_name: gcpm2410.user_ide_project_state ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: current_file {
    type: string
    sql: ${TABLE}.current_file ;;
  }
  dimension: current_line {
    type: string
    sql: ${TABLE}.current_line ;;
  }
  dimension: file_tree_expanded_items {
    type: string
    sql: ${TABLE}.file_tree_expanded_items ;;
  }
  dimension: object_tree_expanded_items {
    type: string
    sql: ${TABLE}.object_tree_expanded_items ;;
  }
  dimension: project_id {
    type: string
    sql: ${TABLE}.project_id ;;
  }
  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, user.first_name, user.last_name, user.dev_mode_user_id, user.dev_branch_name]
  }
}
