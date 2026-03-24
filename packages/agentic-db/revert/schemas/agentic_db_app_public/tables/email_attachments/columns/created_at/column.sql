-- Revert: schemas/agentic_db_app_public/tables/email_attachments/columns/created_at/column


ALTER TABLE "agentic_db_app_public".email_attachments 
  DROP COLUMN created_at RESTRICT;


