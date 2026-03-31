-- Revert: schemas/agentic_db_app_public/tables/agent_collaborators/columns/collaborator_id/column


ALTER TABLE "agentic_db_app_public".agent_collaborators 
  DROP COLUMN collaborator_id RESTRICT;


