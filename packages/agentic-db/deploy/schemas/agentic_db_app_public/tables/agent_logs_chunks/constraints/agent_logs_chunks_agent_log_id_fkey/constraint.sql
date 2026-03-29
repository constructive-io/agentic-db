-- Deploy: schemas/agentic_db_app_public/tables/agent_logs_chunks/constraints/agent_logs_chunks_agent_log_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs/table
-- requires: schemas/agentic_db_app_public/tables/agent_logs_chunks/table
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.agent_logs_chunks 
  ADD CONSTRAINT agent_logs_chunks_agent_log_id_fkey 
    FOREIGN KEY(agent_log_id) 
    REFERENCES agentic_db_app_public.agent_logs (id) 
    ON DELETE CASCADE;

