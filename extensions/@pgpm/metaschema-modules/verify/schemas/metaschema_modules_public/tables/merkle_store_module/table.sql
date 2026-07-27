-- Verify schemas/metaschema_modules_public/tables/merkle_store_module/table on pg

SELECT id, database_id
FROM metaschema_modules_public.merkle_store_module
WHERE FALSE;
