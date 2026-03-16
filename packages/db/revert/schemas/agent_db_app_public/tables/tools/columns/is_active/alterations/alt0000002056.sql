-- Revert: schemas/agent_db_app_public/tables/tools/columns/is_active/alterations/alt0000002056




ALTER TABLE "agent_db_app_public".tools 
    ALTER COLUMN is_active DROP DEFAULT;



