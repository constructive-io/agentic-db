-- Revert: schemas/agentic_db_app_public/tables/agent_skills/columns/id/alterations/alt0000002767


ALTER TABLE "agentic_db_app_public".agent_skills 
  ALTER COLUMN id DROP NOT NULL;


