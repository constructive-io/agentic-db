-- Deploy: schemas/agentic_db_app_public/tables/memories/columns/embedding_stale/alterations/alt0000002998
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/embedding_stale/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE agentic_db_app_public.memories 
  ALTER COLUMN embedding_stale SET NOT NULL;

