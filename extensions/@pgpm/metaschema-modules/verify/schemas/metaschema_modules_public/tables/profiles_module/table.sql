-- Verify schemas/metaschema_modules_public/tables/profiles_module/table on pg

BEGIN;

SELECT id, database_id, schema_id, private_schema_id, table_id, table_name,
       profile_permissions_table_id, profile_permissions_table_name,
       profile_grants_table_id, profile_grants_table_name,
       profile_definition_grants_table_id, profile_definition_grants_table_name,
       membership_type, entity_table_id, actor_table_id,
       permissions_table_id, memberships_table_id, prefix
FROM metaschema_modules_public.profiles_module
WHERE FALSE;

ROLLBACK;
