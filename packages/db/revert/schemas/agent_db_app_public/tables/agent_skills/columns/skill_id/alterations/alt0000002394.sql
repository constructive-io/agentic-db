-- Revert: schemas/agent_db_app_public/tables/agent_skills/columns/skill_id/alterations/alt0000002394


ALTER TABLE "agent_db_app_public".agent_skills 
  ALTER COLUMN skill_id DROP NOT NULL;


