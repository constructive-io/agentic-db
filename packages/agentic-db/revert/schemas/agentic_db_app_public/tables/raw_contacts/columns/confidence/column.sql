-- Revert: schemas/agentic_db_app_public/tables/raw_contacts/columns/confidence/column


ALTER TABLE "agentic_db_app_public".raw_contacts 
  DROP COLUMN confidence RESTRICT;


