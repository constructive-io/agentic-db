-- Revert: schemas/agent_db_app_public/tables/calendar_events/columns/location_geo/column


ALTER TABLE "agent_db_app_public".calendar_events 
  DROP COLUMN location_geo RESTRICT;


