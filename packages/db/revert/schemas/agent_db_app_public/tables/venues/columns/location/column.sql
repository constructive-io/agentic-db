-- Revert: schemas/agent_db_app_public/tables/venues/columns/location/column


ALTER TABLE "agent_db_app_public".venues 
  DROP COLUMN location RESTRICT;


