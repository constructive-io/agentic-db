-- Revert: schemas/agentic_db_app_public/tables/expenses_chunks/columns/id/alterations/alt0000003528


ALTER TABLE agentic_db_app_public.expenses_chunks 
  ALTER COLUMN id DROP NOT NULL;


