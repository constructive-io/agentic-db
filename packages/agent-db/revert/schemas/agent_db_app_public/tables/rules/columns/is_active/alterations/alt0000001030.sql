-- Revert: schemas/agent_db_app_public/tables/rules/columns/is_active/alterations/alt0000001030




ALTER TABLE agent_db_app_public.rules 
    ALTER COLUMN is_active DROP DEFAULT;



