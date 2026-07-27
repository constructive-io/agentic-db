-- Revert schemas/metaschema_modules_public/tables/identity_providers_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.identity_providers_module;

COMMIT;
