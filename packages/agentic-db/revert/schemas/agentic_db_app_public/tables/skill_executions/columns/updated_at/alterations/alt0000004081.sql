-- Revert: schemas/agentic_db_app_public/tables/skill_executions/columns/updated_at/alterations/alt0000004081


ALTER TABLE agentic_db_app_public.skill_executions 
  ALTER COLUMN updated_at DROP NOT NULL;


