-- Revert: schemas/agentic_db_app_public/tables/agent_collaborators/columns/id/column


ALTER TABLE "agentic_db_app_public".agent_collaborators 
  DROP COLUMN id RESTRICT;


