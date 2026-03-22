-- Revert: schemas/agentic_db_app_public/tables/agent_collaborators/columns/agent_id/alterations/alt0000002476


ALTER TABLE agentic_db_app_public.agent_collaborators 
  ALTER COLUMN agent_id DROP NOT NULL;


