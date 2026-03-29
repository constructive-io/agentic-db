-- Revert: schemas/agentic_db_app_public/tables/expenses_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.expenses_chunks 
  DROP COLUMN updated_at RESTRICT;


