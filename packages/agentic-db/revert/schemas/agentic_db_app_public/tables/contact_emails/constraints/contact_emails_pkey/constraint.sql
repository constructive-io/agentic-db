-- Revert: schemas/agentic_db_app_public/tables/contact_emails/constraints/contact_emails_pkey/constraint


ALTER TABLE "agentic_db_app_public".contact_emails 
  DROP CONSTRAINT contact_emails_pkey;


