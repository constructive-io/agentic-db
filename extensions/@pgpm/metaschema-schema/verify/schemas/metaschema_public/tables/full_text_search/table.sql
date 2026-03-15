-- Verify schemas/metaschema_public/tables/full_text_search/table on pg

BEGIN;

SELECT verify_table ('metaschema_public.full_text_search');

ROLLBACK;
