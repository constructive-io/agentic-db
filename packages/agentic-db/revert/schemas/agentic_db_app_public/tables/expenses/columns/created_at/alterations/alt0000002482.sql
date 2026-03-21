-- Revert: schemas/agentic_db_app_public/tables/expenses/columns/created_at/alterations/alt0000002482


ALTER TABLE "agentic_db_app_public".expenses 
  ALTER COLUMN created_at DROP NOT NULL;


