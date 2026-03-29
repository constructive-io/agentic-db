-- Revert: schemas/agentic_db_app_public/tables/expenses_chunks/constraints/expenses_chunks_expense_id_fkey/constraint


ALTER TABLE agentic_db_app_public.expenses_chunks 
  DROP CONSTRAINT expenses_chunks_expense_id_fkey;


