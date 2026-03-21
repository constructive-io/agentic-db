-- Deploy: schemas/agentic_db_app_public/tables/trips/columns/destination_geo/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/trips/columns/notes/column


ALTER TABLE agentic_db_app_public.trips 
  ADD COLUMN destination_geo geography(Point,4326);

