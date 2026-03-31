-- Revert: schemas/agentic_db_app_public/tables/raw_contacts/columns/raw_data/column


ALTER TABLE "agentic_db_app_public".raw_contacts 
  DROP COLUMN raw_data RESTRICT;


