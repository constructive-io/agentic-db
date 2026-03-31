-- Revert: schemas/agentic_db_app_public/tables/expenses/columns/occurred_at/column


ALTER TABLE agentic_db_app_public.expenses 
  DROP COLUMN occurred_at RESTRICT;


