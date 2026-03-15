-- Revert: schemas/agent_db_app_public/tables/templates/columns/updated_at/alterations/alt0000004776




ALTER TABLE "agent_db_app_public".templates 
    ALTER COLUMN updated_at DROP DEFAULT;



