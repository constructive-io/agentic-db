-- Revert: schemas/agent_db_app_public/tables/skills/columns/is_active/alterations/alt0000004253




ALTER TABLE "agent_db_app_public".skills 
    ALTER COLUMN is_active DROP DEFAULT;



