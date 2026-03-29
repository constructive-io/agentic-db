-- Revert: schemas/agentic_db_app_public/tables/expenses/columns/category/column


ALTER TABLE agentic_db_app_public.expenses 
  DROP COLUMN category RESTRICT;


