-- Revert: schemas/agentic_db_app_public/tables/skill_executions/columns/error/column


ALTER TABLE "agentic_db_app_public".skill_executions 
  DROP COLUMN error RESTRICT;


