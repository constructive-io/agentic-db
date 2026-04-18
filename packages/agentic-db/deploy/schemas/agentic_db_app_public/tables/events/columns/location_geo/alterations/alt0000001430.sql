-- Deploy: schemas/agentic_db_app_public/tables/events/columns/location_geo/alterations/alt0000001430
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/columns/location_geo/column
-- requires: schemas/agentic_db_app_public/tables/calendar_event_tasks/alterations/alt0000001428


COMMENT ON COLUMN agentic_db_app_public.events.location_geo IS E'@_resync
@spatialRelation nearbyVenues agentic_db_app_public.venues.location st_dwithin distance';

