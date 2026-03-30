-- Revert: schemas/agentic_db_app_public/tables/email_recipients/columns/contact_id/alterations/alt0000002095


ALTER TABLE "agentic_db_app_public".email_recipients 
  ALTER COLUMN contact_id DROP NOT NULL;


