-- Revert: schemas/agentic_db_app_public/tables/agent_collaborators/columns/collaborator_id/alterations/alt0000000001


ALTER TABLE agentic_db_app_public.agent_collaborators 
  ALTER COLUMN collaborator_id DROP NOT NULL;


