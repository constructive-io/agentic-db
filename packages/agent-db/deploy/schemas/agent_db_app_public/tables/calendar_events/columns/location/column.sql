-- Deploy: schemas/agent_db_app_public/tables/calendar_events/columns/location/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_events/table
-- requires: schemas/agent_db_app_public/tables/calendar_events/columns/all_day/alterations/alt0000004568


ALTER TABLE "agent_db_app_public".calendar_events 
  ADD COLUMN location text;

