-- Revert: schemas/agent_db_app_public/tables/workflows/columns/is_active/alterations/alt0000004451




ALTER TABLE "agent_db_app_public".workflows 
    ALTER COLUMN is_active DROP DEFAULT;



