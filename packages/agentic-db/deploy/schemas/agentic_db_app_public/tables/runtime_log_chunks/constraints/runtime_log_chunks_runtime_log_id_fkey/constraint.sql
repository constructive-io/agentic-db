-- Deploy: schemas/agentic_db_app_public/tables/runtime_log_chunks/constraints/runtime_log_chunks_runtime_log_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/table
-- requires: schemas/agentic_db_app_public/tables/runtime_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


ALTER TABLE agentic_db_app_public.runtime_log_chunks 
  ADD CONSTRAINT runtime_log_chunks_runtime_log_id_fkey 
    FOREIGN KEY(runtime_log_id) 
    REFERENCES agentic_db_app_public.runtime_logs (id) 
    ON DELETE CASCADE;

