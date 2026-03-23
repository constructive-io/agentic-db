-- Revert schemas/metaschema_public/tables/embedding_chunks/table from pg

BEGIN;

DROP TABLE IF EXISTS metaschema_public.embedding_chunks;

COMMIT;
