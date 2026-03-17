-- Revert: schemas/agentic_db_app_public/tables/contacts/columns/email/column


ALTER TABLE "agentic_db_app_public".contacts 
  DROP COLUMN email RESTRICT;


