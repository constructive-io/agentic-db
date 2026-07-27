-- Verify schemas/metaschema_modules_public/tables/identity_providers_module/table on pg

BEGIN;

SELECT verify_table ('metaschema_modules_public.identity_providers_module');

ROLLBACK;
