-- Revert: schemas/agentic_db_app_public/tables/contact_emails/columns/created_at/alterations/alt0000000800




ALTER TABLE agentic_db_app_public.contact_emails 
    ALTER COLUMN created_at DROP DEFAULT;



