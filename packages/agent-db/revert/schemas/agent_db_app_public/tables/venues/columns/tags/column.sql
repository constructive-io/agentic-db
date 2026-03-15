-- Revert: schemas/agent_db_app_public/tables/venues/columns/tags/column


ALTER TABLE "agent_db_app_public".venues 
  DROP COLUMN tags RESTRICT;


