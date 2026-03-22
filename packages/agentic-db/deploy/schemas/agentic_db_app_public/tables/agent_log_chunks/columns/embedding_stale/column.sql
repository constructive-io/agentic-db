-- Deploy: schemas/agentic_db_app_public/tables/agent_log_chunks/columns/embedding_stale/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


ALTER TABLE agentic_db_app_public.agent_log_chunks 
  ADD COLUMN embedding_stale boolean;

