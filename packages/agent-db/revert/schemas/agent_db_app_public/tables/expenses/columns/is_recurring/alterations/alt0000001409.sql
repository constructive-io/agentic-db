-- Revert: schemas/agent_db_app_public/tables/expenses/columns/is_recurring/alterations/alt0000001409




ALTER TABLE agent_db_app_public.expenses 
    ALTER COLUMN is_recurring DROP DEFAULT;



