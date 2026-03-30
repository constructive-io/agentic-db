-- Revert: schemas/agentic_db_app_public/tables/expenses/columns/amount/alterations/alt0000001392


ALTER TABLE "agentic_db_app_public".expenses 
  ALTER COLUMN amount DROP NOT NULL;


