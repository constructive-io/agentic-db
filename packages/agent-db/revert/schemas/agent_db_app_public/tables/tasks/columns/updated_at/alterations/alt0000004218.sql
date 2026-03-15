-- Revert: schemas/agent_db_app_public/tables/tasks/columns/updated_at/alterations/alt0000004218




ALTER TABLE "agent_db_app_public".tasks 
    ALTER COLUMN updated_at DROP DEFAULT;



