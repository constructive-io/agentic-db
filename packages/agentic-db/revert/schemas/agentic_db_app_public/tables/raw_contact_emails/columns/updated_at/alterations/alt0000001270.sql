-- Revert: schemas/agentic_db_app_public/tables/raw_contact_emails/columns/updated_at/alterations/alt0000001270




ALTER TABLE agentic_db_app_public.raw_contact_emails 
    ALTER COLUMN updated_at DROP DEFAULT;



