-- Revert: schemas/agentic_db_app_public/tables/email_attachments/columns/email_id/alterations/alt0000001484


ALTER TABLE "agentic_db_app_public".email_attachments 
  ALTER COLUMN email_id DROP NOT NULL;


