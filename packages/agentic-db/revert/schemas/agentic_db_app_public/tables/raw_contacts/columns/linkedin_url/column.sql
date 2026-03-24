-- Revert: schemas/agentic_db_app_public/tables/raw_contacts/columns/linkedin_url/column


ALTER TABLE "agentic_db_app_public".raw_contacts 
  DROP COLUMN linkedin_url RESTRICT;


