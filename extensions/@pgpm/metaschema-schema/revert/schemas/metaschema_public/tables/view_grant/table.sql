-- Revert schemas/metaschema_public/tables/view_grant/table from pg

BEGIN;

DROP TABLE IF EXISTS metaschema_public.view_grant;

COMMIT;
