-- Revert: schemas/agentic_db_app_public/tables/goals/columns/title/alterations/alt0000001654


ALTER TABLE "agentic_db_app_public".goals 
  ALTER COLUMN title DROP NOT NULL;


