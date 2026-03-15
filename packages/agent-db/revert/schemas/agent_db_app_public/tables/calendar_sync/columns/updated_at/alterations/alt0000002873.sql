-- Revert: schemas/agent_db_app_public/tables/calendar_sync/columns/updated_at/alterations/alt0000002873




ALTER TABLE "agent_db_app_public".calendar_sync 
    ALTER COLUMN updated_at DROP DEFAULT;



