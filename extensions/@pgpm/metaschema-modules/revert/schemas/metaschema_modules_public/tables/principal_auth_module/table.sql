-- Revert schemas/metaschema_modules_public/tables/principal_auth_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.principal_auth_module;

COMMIT;
