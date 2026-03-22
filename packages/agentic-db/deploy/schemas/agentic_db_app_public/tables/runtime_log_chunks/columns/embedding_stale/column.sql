-- Deploy: schemas/agentic_db_app_public/tables/runtime_log_chunks/columns/embedding_stale/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


ALTER TABLE "agentic_db_app_public".runtime_log_chunks 
  ADD COLUMN embedding_stale boolean;

