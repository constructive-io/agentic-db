-- Revert: schemas/agentic_db_app_public/tables/goals/columns/status/column


ALTER TABLE "agentic_db_app_public".goals 
  DROP COLUMN status RESTRICT;


