-- Revert: schemas/agentic_db_app_public/tables/skill_executions/columns/output/column


ALTER TABLE "agentic_db_app_public".skill_executions 
  DROP COLUMN output RESTRICT;


