-- Revert: schemas/agentic_db_app_public/tables/expenses/columns/id/column


ALTER TABLE agentic_db_app_public.expenses 
  DROP COLUMN id RESTRICT;


