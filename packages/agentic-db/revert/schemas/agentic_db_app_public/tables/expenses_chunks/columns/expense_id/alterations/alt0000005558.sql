-- Revert: schemas/agentic_db_app_public/tables/expenses_chunks/columns/expense_id/alterations/alt0000005558


ALTER TABLE agentic_db_app_public.expenses_chunks 
  ALTER COLUMN expense_id DROP NOT NULL;


