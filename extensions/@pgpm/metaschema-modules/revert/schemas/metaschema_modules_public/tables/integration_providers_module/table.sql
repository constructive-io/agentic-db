-- Revert schemas/metaschema_modules_public/tables/integration_providers_module/table from pg

BEGIN;

DROP TABLE IF EXISTS metaschema_modules_public.integration_providers_module CASCADE;

COMMIT;
