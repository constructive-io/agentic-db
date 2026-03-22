-- Deploy: schemas/agentic_db_app_public/tables/runtime_log_chunks/columns/content/alterations/alt0000002573
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_log_chunks/columns/content/column


ALTER TABLE agentic_db_app_public.runtime_log_chunks 
  ALTER COLUMN content SET NOT NULL;

