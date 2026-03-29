-- Revert: schemas/agentic_db_app_public/tables/emails_chunks/columns/email_id/alterations/alt0000006045


ALTER TABLE agentic_db_app_public.emails_chunks 
  ALTER COLUMN email_id DROP NOT NULL;


