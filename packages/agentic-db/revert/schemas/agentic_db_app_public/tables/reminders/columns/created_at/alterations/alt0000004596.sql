-- Revert: schemas/agentic_db_app_public/tables/reminders/columns/created_at/alterations/alt0000004596




ALTER TABLE agentic_db_app_public.reminders 
    ALTER COLUMN created_at DROP DEFAULT;



