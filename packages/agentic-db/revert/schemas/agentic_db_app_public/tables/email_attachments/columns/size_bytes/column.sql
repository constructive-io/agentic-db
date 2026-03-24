-- Revert: schemas/agentic_db_app_public/tables/email_attachments/columns/size_bytes/column


ALTER TABLE "agentic_db_app_public".email_attachments 
  DROP COLUMN size_bytes RESTRICT;


