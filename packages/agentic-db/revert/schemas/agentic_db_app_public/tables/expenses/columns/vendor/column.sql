-- Revert: schemas/agentic_db_app_public/tables/expenses/columns/vendor/column


ALTER TABLE agentic_db_app_public.expenses 
  DROP COLUMN vendor RESTRICT;


