-- Revert: schemas/agentic_db_app_public/tables/skill_executions/columns/id/alterations/alt0000002090


ALTER TABLE "agentic_db_app_public".skill_executions 
  ALTER COLUMN id DROP NOT NULL;


