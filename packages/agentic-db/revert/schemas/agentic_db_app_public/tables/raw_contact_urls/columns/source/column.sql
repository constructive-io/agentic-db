-- Revert: schemas/agentic_db_app_public/tables/raw_contact_urls/columns/source/column


ALTER TABLE "agentic_db_app_public".raw_contact_urls 
  DROP COLUMN source RESTRICT;


