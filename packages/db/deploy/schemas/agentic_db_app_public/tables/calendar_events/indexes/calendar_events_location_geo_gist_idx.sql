-- Deploy: schemas/agentic_db_app_public/tables/calendar_events/indexes/calendar_events_location_geo_gist_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table
-- requires: schemas/agentic_db_app_public/tables/calendar_events/columns/location_geo/column
-- requires: schemas/agentic_db_app_public/tables/contacts/indexes/contacts_location_geo_gist_idx


CREATE INDEX calendar_events_location_geo_gist_idx ON "agentic_db_app_public".calendar_events USING GIST ( location_geo );

