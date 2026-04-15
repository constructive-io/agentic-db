-- Revert: schemas/agentic_db_app_public/tables/email_attachments/columns/updated_at/alterations/alt0000015761




ALTER TABLE agentic_db_app_public.email_attachments 
    ALTER COLUMN updated_at DROP DEFAULT;



