-- Revert: schemas/agent_db_app_public/tables/trips/columns/start_date/column


ALTER TABLE "agent_db_app_public".trips 
  DROP COLUMN start_date RESTRICT;


