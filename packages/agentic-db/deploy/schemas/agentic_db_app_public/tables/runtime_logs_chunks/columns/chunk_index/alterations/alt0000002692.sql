-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs_chunks/columns/chunk_index/alterations/alt0000002692
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_logs_chunks/columns/chunk_index/column


ALTER TABLE agentic_db_app_public.runtime_logs_chunks 
  ALTER COLUMN chunk_index SET NOT NULL;

