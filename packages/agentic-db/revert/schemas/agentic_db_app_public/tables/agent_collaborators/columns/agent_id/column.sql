-- Revert: schemas/agentic_db_app_public/tables/agent_collaborators/columns/agent_id/column


ALTER TABLE "agentic_db_app_public".agent_collaborators 
  DROP COLUMN agent_id RESTRICT;


