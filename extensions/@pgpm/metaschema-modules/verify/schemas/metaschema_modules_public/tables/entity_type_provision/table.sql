-- Verify schemas/metaschema_modules_public/tables/entity_type_provision/table on pg

SELECT id, database_id
FROM metaschema_modules_public.entity_type_provision
WHERE FALSE;
