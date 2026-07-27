-- Verify schemas/metaschema_modules_public/tables/principal_auth_module/table on pg

BEGIN;

SELECT id, database_id, schema_id, principals_table_id,
       principal_entities_table_id,
       users_table_id, sessions_table_id, session_credentials_table_id,
       audits_table_id, principals_table_name,
       create_principal_function, delete_principal_function,
       api_name
  FROM metaschema_modules_public.principal_auth_module
 WHERE FALSE;

ROLLBACK;
