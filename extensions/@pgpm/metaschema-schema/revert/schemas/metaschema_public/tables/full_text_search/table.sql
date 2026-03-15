-- Revert schemas/metaschema_public/tables/full_text_search/table from pg

BEGIN;

DROP TABLE metaschema_public.full_text_search;

COMMIT;
