-- Revert: schemas/agentic_db_app_public/tables/email_attachments/columns/id/alterations/alt0000001434


ALTER TABLE "agentic_db_app_public".email_attachments 
  ALTER COLUMN id DROP NOT NULL;


