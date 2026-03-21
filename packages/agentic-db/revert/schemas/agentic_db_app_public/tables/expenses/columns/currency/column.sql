-- Revert: schemas/agentic_db_app_public/tables/expenses/columns/currency/column


ALTER TABLE agentic_db_app_public.expenses 
  DROP COLUMN currency RESTRICT;


