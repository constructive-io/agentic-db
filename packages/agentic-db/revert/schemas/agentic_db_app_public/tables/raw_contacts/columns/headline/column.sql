-- Revert: schemas/agentic_db_app_public/tables/raw_contacts/columns/headline/column


ALTER TABLE "agentic_db_app_public".raw_contacts 
  DROP COLUMN headline RESTRICT;


