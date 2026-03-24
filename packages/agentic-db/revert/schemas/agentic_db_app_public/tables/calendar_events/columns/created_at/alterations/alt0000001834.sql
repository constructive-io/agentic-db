-- Revert: schemas/agentic_db_app_public/tables/calendar_events/columns/created_at/alterations/alt0000001834




ALTER TABLE "agentic_db_app_public".calendar_events 
    ALTER COLUMN created_at DROP DEFAULT;



