-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs_chunks/columns/runtime_logs_id/alterations/alt0000002690
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_logs_chunks/columns/runtime_logs_id/column


ALTER TABLE agentic_db_app_public.runtime_logs_chunks 
  ALTER COLUMN runtime_logs_id SET NOT NULL;

