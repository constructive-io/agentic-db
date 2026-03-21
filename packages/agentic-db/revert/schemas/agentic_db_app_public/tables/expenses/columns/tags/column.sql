-- Revert: schemas/agentic_db_app_public/tables/expenses/columns/tags/column


ALTER TABLE agentic_db_app_public.expenses 
  DROP COLUMN tags RESTRICT;


