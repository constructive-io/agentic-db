-- Revert: schemas/agentic_db_app_public/tables/skills/columns/agent_id/column


ALTER TABLE agentic_db_app_public.skills 
  DROP COLUMN agent_id RESTRICT;


