-- Deploy: schemas/agentic_db_app_public/tables/activity_logs/columns/embedding_stale/alterations/alt0000003826
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs/table
-- requires: schemas/agentic_db_app_public/tables/activity_logs/columns/embedding_stale/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE agentic_db_app_public.activity_logs 
  ALTER COLUMN embedding_stale SET NOT NULL;

