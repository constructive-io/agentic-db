-- Revert: schemas/agentic_db_app_public/tables/goals/columns/priority/column


ALTER TABLE "agentic_db_app_public".goals 
  DROP COLUMN priority RESTRICT;


