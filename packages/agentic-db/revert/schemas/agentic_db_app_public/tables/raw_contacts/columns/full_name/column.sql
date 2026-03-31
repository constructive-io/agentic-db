-- Revert: schemas/agentic_db_app_public/tables/raw_contacts/columns/full_name/column


ALTER TABLE "agentic_db_app_public".raw_contacts 
  DROP COLUMN full_name RESTRICT;


