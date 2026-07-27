-- Deploy: schemas/agentic_db_app_public/tables/agent_collaborators/columns/agent_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_collaborators/table


ALTER TABLE agentic_db_app_public.agent_collaborators 
  ADD COLUMN agent_id uuid;

