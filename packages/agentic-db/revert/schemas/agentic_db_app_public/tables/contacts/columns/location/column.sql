-- Revert: schemas/agentic_db_app_public/tables/contacts/columns/location/column


ALTER TABLE "agentic_db_app_public".contacts 
  DROP COLUMN location RESTRICT;


