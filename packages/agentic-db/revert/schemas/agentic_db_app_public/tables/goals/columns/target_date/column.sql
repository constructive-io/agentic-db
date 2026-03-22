-- Revert: schemas/agentic_db_app_public/tables/goals/columns/target_date/column


ALTER TABLE "agentic_db_app_public".goals 
  DROP COLUMN target_date RESTRICT;


