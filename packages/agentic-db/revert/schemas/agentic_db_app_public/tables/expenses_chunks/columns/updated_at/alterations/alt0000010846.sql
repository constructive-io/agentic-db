-- Revert: schemas/agentic_db_app_public/tables/expenses_chunks/columns/updated_at/alterations/alt0000010846


ALTER TABLE agentic_db_app_public.expenses_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;


