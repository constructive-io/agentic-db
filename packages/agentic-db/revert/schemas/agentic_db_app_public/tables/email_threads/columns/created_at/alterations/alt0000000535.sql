-- Revert: schemas/agentic_db_app_public/tables/email_threads/columns/created_at/alterations/alt0000000535




ALTER TABLE agentic_db_app_public.email_threads 
    ALTER COLUMN created_at DROP DEFAULT;



