-- Revert: schemas/agentic_db_app_public/tables/skill_executions/columns/created_at/column


ALTER TABLE agentic_db_app_public.skill_executions 
  DROP COLUMN created_at RESTRICT;


