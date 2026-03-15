-- Revert: schemas/agent_db_app_public/tables/expenses/columns/created_at/alterations/alt0000001405




ALTER TABLE agent_db_app_public.expenses 
    ALTER COLUMN created_at DROP DEFAULT;



