-- Revert: schemas/agentic_db_app_public/tables/email_attachments/constraints/email_attachments_email_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".email_attachments 
  DROP CONSTRAINT email_attachments_email_id_fkey;


