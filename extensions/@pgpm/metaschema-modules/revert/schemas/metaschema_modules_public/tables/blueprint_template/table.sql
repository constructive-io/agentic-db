-- Revert schemas/metaschema_modules_public/tables/blueprint_template/table from pg

BEGIN;

DROP TABLE IF EXISTS metaschema_modules_public.blueprint_template;

COMMIT;
