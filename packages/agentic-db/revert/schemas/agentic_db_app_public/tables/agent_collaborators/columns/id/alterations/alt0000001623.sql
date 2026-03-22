-- Revert: schemas/agentic_db_app_public/tables/agent_collaborators/columns/id/alterations/alt0000001623


ALTER TABLE "agentic_db_app_public".agent_collaborators 
  ALTER COLUMN id DROP NOT NULL;


