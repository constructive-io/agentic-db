-- Revert: schemas/agentic_db_app_public/tables/agent_skills/columns/skill_id/column


ALTER TABLE agentic_db_app_public.agent_skills 
  DROP COLUMN skill_id RESTRICT;


