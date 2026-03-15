-- Revert: schemas/agent_db_app_public/tables/venues/columns/city/column


ALTER TABLE "agent_db_app_public".venues 
  DROP COLUMN city RESTRICT;


