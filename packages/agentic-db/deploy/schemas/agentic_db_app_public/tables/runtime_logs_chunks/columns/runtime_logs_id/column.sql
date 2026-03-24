-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs_chunks/columns/runtime_logs_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


ALTER TABLE agentic_db_app_public.runtime_logs_chunks 
  ADD COLUMN runtime_logs_id uuid;

