-- Revert: schemas/agentic_db_app_public/tables/email_attachments/columns/filename/column


ALTER TABLE "agentic_db_app_public".email_attachments 
  DROP COLUMN filename RESTRICT;


