-- Revert schemas/metaschema_public/tables/view/table from pg

BEGIN;

DROP TABLE IF EXISTS metaschema_public.view;

COMMIT;
