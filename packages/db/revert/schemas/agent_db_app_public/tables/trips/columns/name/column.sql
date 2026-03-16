-- Revert: schemas/agent_db_app_public/tables/trips/columns/name/column


ALTER TABLE "agent_db_app_public".trips 
  DROP COLUMN name RESTRICT;


