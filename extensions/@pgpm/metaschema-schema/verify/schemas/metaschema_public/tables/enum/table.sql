-- Verify schemas/metaschema_public/tables/enum/table on pg

BEGIN;

SELECT verify_table ('metaschema_public.enum');

ROLLBACK;
