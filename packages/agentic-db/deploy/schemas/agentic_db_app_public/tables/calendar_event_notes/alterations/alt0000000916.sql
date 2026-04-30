-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_notes/alterations/alt0000000916
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_event_notes/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/location_geo/alterations/alt0000000882


ALTER TABLE agentic_db_app_public.calendar_event_notes 
  DISABLE ROW LEVEL SECURITY;

