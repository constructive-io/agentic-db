-- Deploy: schemas/agentic_db_app_public/tables/calendar_events/columns/location/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table
-- requires: schemas/agentic_db_app_public/tables/calendar_events/columns/all_day/alterations/alt0000001364


ALTER TABLE "agentic_db_app_public".calendar_events 
  ADD COLUMN location text;

