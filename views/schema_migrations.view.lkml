view: schema_migrations {
  sql_table_name: gcpm2410.schema_migrations ;;

  dimension: filename {
    type: string
    sql: ${TABLE}.filename ;;
  }
  measure: count {
    type: count
    drill_fields: [filename]
  }
}
