-- Revert: schemas/agentic_db_app_public/tables/agent_skills/columns/id/column


ALTER TABLE agentic_db_app_public.agent_skills 
  DROP COLUMN id RESTRICT;


