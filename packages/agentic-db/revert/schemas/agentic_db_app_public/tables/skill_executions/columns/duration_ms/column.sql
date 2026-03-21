-- Revert: schemas/agentic_db_app_public/tables/skill_executions/columns/duration_ms/column


ALTER TABLE agentic_db_app_public.skill_executions 
  DROP COLUMN duration_ms RESTRICT;


