-- Revert: schemas/agentic_db_app_public/tables/expenses/columns/created_at/alterations/alt0000003521




ALTER TABLE agentic_db_app_public.expenses 
    ALTER COLUMN created_at DROP DEFAULT;



