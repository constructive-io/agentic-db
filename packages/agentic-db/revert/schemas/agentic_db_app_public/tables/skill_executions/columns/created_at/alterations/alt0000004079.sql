-- Revert: schemas/agentic_db_app_public/tables/skill_executions/columns/created_at/alterations/alt0000004079


ALTER TABLE agentic_db_app_public.skill_executions 
  ALTER COLUMN created_at DROP NOT NULL;


