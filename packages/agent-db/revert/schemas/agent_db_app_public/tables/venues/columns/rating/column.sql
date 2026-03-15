-- Revert: schemas/agent_db_app_public/tables/venues/columns/rating/column


ALTER TABLE "agent_db_app_public".venues 
  DROP COLUMN rating RESTRICT;


