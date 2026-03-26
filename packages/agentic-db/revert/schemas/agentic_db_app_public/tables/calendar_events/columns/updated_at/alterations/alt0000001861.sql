-- Revert: schemas/agentic_db_app_public/tables/calendar_events/columns/updated_at/alterations/alt0000001861




ALTER TABLE "agentic_db_app_public".calendar_events 
    ALTER COLUMN updated_at DROP DEFAULT;



