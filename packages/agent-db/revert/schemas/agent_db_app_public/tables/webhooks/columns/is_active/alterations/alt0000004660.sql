-- Revert: schemas/agent_db_app_public/tables/webhooks/columns/is_active/alterations/alt0000004660




ALTER TABLE "agent_db_app_public".webhooks 
    ALTER COLUMN is_active DROP DEFAULT;



