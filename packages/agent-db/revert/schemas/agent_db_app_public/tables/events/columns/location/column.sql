-- Revert: schemas/agent_db_app_public/tables/events/columns/location/column


ALTER TABLE "agent_db_app_public".events 
  DROP COLUMN location RESTRICT;


