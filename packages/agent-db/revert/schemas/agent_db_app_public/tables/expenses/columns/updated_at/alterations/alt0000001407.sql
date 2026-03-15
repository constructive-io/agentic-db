-- Revert: schemas/agent_db_app_public/tables/expenses/columns/updated_at/alterations/alt0000001407




ALTER TABLE agent_db_app_public.expenses 
    ALTER COLUMN updated_at DROP DEFAULT;



