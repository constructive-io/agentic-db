-- Revert: schemas/agentic_db_app_public/tables/skill_executions/columns/skill_id/alterations/alt0000001107


ALTER TABLE "agentic_db_app_public".skill_executions 
  ALTER COLUMN skill_id DROP NOT NULL;


