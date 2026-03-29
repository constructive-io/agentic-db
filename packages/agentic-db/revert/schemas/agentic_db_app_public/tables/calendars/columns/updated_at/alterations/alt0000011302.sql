-- Revert: schemas/agentic_db_app_public/tables/calendars/columns/updated_at/alterations/alt0000011302




ALTER TABLE agentic_db_app_public.calendars 
    ALTER COLUMN updated_at DROP DEFAULT;



