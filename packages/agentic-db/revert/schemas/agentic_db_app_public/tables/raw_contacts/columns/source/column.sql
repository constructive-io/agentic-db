-- Revert: schemas/agentic_db_app_public/tables/raw_contacts/columns/source/column


ALTER TABLE "agentic_db_app_public".raw_contacts 
  DROP COLUMN source RESTRICT;


