-- Deploy: schemas/agentic_db_app_public/tables/events/columns/location_geo/alterations/alt0000000881
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/columns/location_geo/column
-- requires: schemas/agentic_db_app_public/tables/calendar_attendees/indexes/calendar_attendees_contact_id_idx


COMMENT ON COLUMN agentic_db_app_public.events.location_geo IS E'@spatialRelation nearbyVenues agentic_db_app_public.venues.location st_dwithin distance';

