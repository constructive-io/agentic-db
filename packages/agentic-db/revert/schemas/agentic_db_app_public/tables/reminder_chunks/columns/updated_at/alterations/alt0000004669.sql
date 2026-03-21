-- Revert: schemas/agentic_db_app_public/tables/reminder_chunks/columns/updated_at/alterations/alt0000004669




ALTER TABLE agentic_db_app_public.reminder_chunks 
    ALTER COLUMN updated_at DROP DEFAULT;



