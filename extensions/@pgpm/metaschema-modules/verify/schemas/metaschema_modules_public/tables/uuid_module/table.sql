-- Verify schemas/metaschema_modules_public/tables/uuid_module/table on pg

BEGIN;

SELECT verify_table ('metaschema_modules_public.uuid_module');

ROLLBACK;
