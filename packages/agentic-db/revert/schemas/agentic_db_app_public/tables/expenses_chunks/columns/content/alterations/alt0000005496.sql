-- Revert: schemas/agentic_db_app_public/tables/expenses_chunks/columns/content/alterations/alt0000005496


ALTER TABLE agentic_db_app_public.expenses_chunks 
  ALTER COLUMN content DROP NOT NULL;


