-- Revert: schemas/agentic_db_app_public/tables/goals/columns/tags/column


ALTER TABLE "agentic_db_app_public".goals 
  DROP COLUMN tags RESTRICT;


