-- Revert: schemas/agentic_db_app_public/tables/email_recipients/columns/contact_id/column


ALTER TABLE "agentic_db_app_public".email_recipients 
  DROP COLUMN contact_id RESTRICT;


