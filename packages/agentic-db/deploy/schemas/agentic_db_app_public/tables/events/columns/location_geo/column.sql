-- Deploy: schemas/agentic_db_app_public/tables/events/columns/location_geo/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table


ALTER TABLE "agentic_db_app_public".events 
  ADD COLUMN location_geo geography(Point,4326);

