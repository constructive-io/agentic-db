-- Revert: schemas/agent_db_app_public/tables/workflows/columns/created_at/alterations/alt0000004447




ALTER TABLE "agent_db_app_public".workflows 
    ALTER COLUMN created_at DROP DEFAULT;



