-- Revert schemas/metaschema_modules_public/tables/infra_secrets_module/table from pg

BEGIN;

DROP TABLE IF EXISTS metaschema_modules_public.infra_secrets_module CASCADE;

COMMIT;
