-- Revert: schemas/agentic_db_app_public/tables/emails_chunks/columns/email_id/column


ALTER TABLE agentic_db_app_public.emails_chunks 
  DROP COLUMN email_id RESTRICT;


