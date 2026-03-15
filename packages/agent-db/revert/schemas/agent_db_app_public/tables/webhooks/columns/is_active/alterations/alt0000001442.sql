-- Revert: schemas/agent_db_app_public/tables/webhooks/columns/is_active/alterations/alt0000001442




ALTER TABLE agent_db_app_public.webhooks 
    ALTER COLUMN is_active DROP DEFAULT;



