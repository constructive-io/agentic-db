-- Revert: schemas/agentic_db_app_public/tables/expenses/columns/amount/column


ALTER TABLE "agentic_db_app_public".expenses 
  DROP COLUMN amount RESTRICT;


