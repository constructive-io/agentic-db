-- Revert: schemas/agentic_db_app_public/tables/expenses/columns/is_recurring/alterations/alt0000004473




ALTER TABLE agentic_db_app_public.expenses 
    ALTER COLUMN is_recurring DROP DEFAULT;



