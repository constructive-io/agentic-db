-- Revert: schemas/agent_db_app_public/tables/expenses/columns/currency/alterations/alt0000001178




ALTER TABLE agent_db_app_public.expenses 
    ALTER COLUMN currency DROP DEFAULT;



