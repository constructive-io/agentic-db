-- Deploy: schemas/agent_db_app_public/tables/calendar_events/columns/location_geo/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_events/table
-- requires: schemas/agent_db_app_public/tables/calendar_events/columns/status/alterations/alt0000002217


ALTER TABLE "agent_db_app_public".calendar_events 
  ADD COLUMN location_geo geography(Point,4326);

