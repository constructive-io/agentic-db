-- Revert: schemas/agentic_db_app_public/tables/skill_executions/columns/status/column


ALTER TABLE agentic_db_app_public.skill_executions 
  DROP COLUMN status RESTRICT;


