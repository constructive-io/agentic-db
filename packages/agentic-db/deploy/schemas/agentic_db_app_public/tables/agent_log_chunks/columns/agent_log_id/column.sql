-- Deploy: schemas/agentic_db_app_public/tables/agent_log_chunks/columns/agent_log_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/agent_task_chunks/indexes/agent_task_chunks_agent_task_id_idx


ALTER TABLE "agentic_db_app_public".agent_log_chunks 
  ADD COLUMN agent_log_id uuid;

