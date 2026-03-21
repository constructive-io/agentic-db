-- Revert: schemas/agentic_db_app_public/tables/goals/columns/created_at/alterations/alt0000002010


ALTER TABLE "agentic_db_app_public".goals 
  ALTER COLUMN created_at DROP NOT NULL;


