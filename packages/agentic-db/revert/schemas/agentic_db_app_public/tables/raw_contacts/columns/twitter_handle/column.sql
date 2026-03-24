-- Revert: schemas/agentic_db_app_public/tables/raw_contacts/columns/twitter_handle/column


ALTER TABLE "agentic_db_app_public".raw_contacts 
  DROP COLUMN twitter_handle RESTRICT;


