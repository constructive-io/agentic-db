-- Verify schemas/metaschema_modules_public/tables/agent_module/table on pg

BEGIN;

SELECT
  id,
  database_id,
  schema_id,
  private_schema_id,
  thread_table_id,
  thread_table_name,
  message_table_id,
  message_table_name,
  task_table_id,
  task_table_name,
  prefix
FROM metaschema_modules_public.agent_module
WHERE FALSE;

ROLLBACK;
