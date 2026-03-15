-- Revert schemas/metaschema_modules_public/tables/relation_provision/table from pg

BEGIN;

DROP TABLE IF EXISTS metaschema_modules_public.relation_provision;

COMMIT;
