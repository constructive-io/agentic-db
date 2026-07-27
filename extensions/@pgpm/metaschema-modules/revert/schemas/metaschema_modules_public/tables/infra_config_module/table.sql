-- Revert schemas/metaschema_modules_public/tables/infra_config_module/table from pg

BEGIN;

DROP TABLE IF EXISTS metaschema_modules_public.infra_config_module CASCADE;

COMMIT;
