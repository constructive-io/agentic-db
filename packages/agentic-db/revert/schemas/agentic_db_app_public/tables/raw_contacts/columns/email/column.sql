-- Revert: schemas/agentic_db_app_public/tables/raw_contacts/columns/email/column


ALTER TABLE "agentic_db_app_public".raw_contacts 
  DROP COLUMN email RESTRICT;


