-- Revert: schemas/agentic_db_app_public/tables/email_attachments/columns/created_at/alterations/alt0000001840


ALTER TABLE "agentic_db_app_public".email_attachments 
  ALTER COLUMN created_at DROP NOT NULL;


