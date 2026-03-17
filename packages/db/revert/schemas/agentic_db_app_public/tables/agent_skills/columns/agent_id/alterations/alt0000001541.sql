-- Revert: schemas/agentic_db_app_public/tables/agent_skills/columns/agent_id/alterations/alt0000001541


ALTER TABLE "agentic_db_app_public".agent_skills 
  ALTER COLUMN agent_id DROP NOT NULL;


