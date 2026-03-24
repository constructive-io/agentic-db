-- Revert: schemas/agentic_db_app_public/tables/email_attachments/columns/meta/column


ALTER TABLE "agentic_db_app_public".email_attachments 
  DROP COLUMN meta RESTRICT;


