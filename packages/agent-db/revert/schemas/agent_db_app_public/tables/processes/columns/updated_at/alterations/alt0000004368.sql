-- Revert: schemas/agent_db_app_public/tables/processes/columns/updated_at/alterations/alt0000004368




ALTER TABLE "agent_db_app_public".processes 
    ALTER COLUMN updated_at DROP DEFAULT;



