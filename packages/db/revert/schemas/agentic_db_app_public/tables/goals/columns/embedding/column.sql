-- Revert: schemas/agentic_db_app_public/tables/goals/columns/embedding/column


ALTER TABLE "agentic_db_app_public".goals 
  DROP COLUMN embedding RESTRICT;


