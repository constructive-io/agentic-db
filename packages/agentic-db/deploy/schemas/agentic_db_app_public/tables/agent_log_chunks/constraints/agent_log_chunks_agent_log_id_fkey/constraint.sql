-- Deploy: schemas/agentic_db_app_public/tables/agent_log_chunks/constraints/agent_log_chunks_agent_log_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs/table
-- requires: schemas/agentic_db_app_public/tables/agent_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


ALTER TABLE agentic_db_app_public.agent_log_chunks 
  ADD CONSTRAINT agent_log_chunks_agent_log_id_fkey 
    FOREIGN KEY(agent_log_id) 
    REFERENCES agentic_db_app_public.agent_logs (id) 
    ON DELETE CASCADE;

