-- Revert: schemas/agent_db_app_public/tables/trips/columns/status/column


ALTER TABLE "agent_db_app_public".trips 
  DROP COLUMN status RESTRICT;


