-- Revert: schemas/agentic_db_app_public/tables/raw_contacts/columns/company/column


ALTER TABLE "agentic_db_app_public".raw_contacts 
  DROP COLUMN company RESTRICT;


