-- Verify schemas/metaschema_public/tables/trigger/table on pg

BEGIN;

SELECT verify_table ('metaschema_public.trigger');

ROLLBACK;
