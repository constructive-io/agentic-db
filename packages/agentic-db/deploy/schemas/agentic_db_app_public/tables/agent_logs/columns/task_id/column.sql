-- Deploy: schemas/agentic_db_app_public/tables/agent_logs/columns/task_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs/table
-- requires: schemas/agentic_db_app_public/tables/agent_logs/columns/context/column


ALTER TABLE agentic_db_app_public.agent_logs 
  ADD COLUMN task_id uuid;

