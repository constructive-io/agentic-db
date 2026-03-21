-- Deploy: schemas/agentic_db_app_public/tables/agent_spawns/columns/session_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/table
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/columns/child_agent_id/column


ALTER TABLE agentic_db_app_public.agent_spawns 
  ADD COLUMN session_id uuid;

