-- Revert: schemas/agentic_db_app_public/tables/expenses/columns/amount/alterations/alt0000001157


ALTER TABLE "agentic_db_app_public".expenses 
  ALTER COLUMN amount DROP NOT NULL;


