-- Revert: schemas/agentic_db_app_public/tables/expenses_chunks/columns/created_at/alterations/alt0000001387


ALTER TABLE "agentic_db_app_public".expenses_chunks 
  ALTER COLUMN created_at DROP DEFAULT;


