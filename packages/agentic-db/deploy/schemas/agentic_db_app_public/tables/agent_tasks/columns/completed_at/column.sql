-- Deploy: schemas/agentic_db_app_public/tables/agent_tasks/columns/completed_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/table
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/columns/started_at/column


ALTER TABLE agentic_db_app_public.agent_tasks 
  ADD COLUMN completed_at timestamptz;

