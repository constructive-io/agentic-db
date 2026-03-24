-- Revert schemas/metaschema_modules_public/tables/blueprint/table from pg

BEGIN;

DROP TABLE IF EXISTS metaschema_modules_public.blueprint;

COMMIT;
