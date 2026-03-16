-- Revert: schemas/agentic_db_app_public/tables/agent_skills/columns/skill_id/alterations/alt0000001542


ALTER TABLE "agentic_db_app_public".agent_skills 
  ALTER COLUMN skill_id DROP NOT NULL;


