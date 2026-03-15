-- Revert: schemas/agent_db_app_public/tables/trips/columns/tags/column


ALTER TABLE "agent_db_app_public".trips 
  DROP COLUMN tags RESTRICT;


