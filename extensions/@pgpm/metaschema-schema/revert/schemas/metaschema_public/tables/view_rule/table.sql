-- Revert schemas/metaschema_public/tables/view_rule/table from pg

BEGIN;

DROP TABLE IF EXISTS metaschema_public.view_rule;

COMMIT;
