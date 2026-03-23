-- Deploy: schemas/agentic_db_app_public/tables/agent_logs_chunks/columns/metadata/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


ALTER TABLE agentic_db_app_public.agent_logs_chunks 
  ADD COLUMN metadata jsonb;

