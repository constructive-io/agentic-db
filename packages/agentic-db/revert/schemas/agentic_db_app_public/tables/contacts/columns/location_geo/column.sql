-- Revert: schemas/agentic_db_app_public/tables/contacts/columns/location_geo/column


ALTER TABLE "agentic_db_app_public".contacts 
  DROP COLUMN location_geo RESTRICT;


