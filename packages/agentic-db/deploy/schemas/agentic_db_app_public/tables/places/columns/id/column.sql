-- Deploy: schemas/agentic_db_app_public/tables/places/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places/table
-- requires: schemas/agentic_db_app_public/tables/trips/indexes/trips_location_gist_idx


ALTER TABLE "agentic_db_app_public".places 
  ADD COLUMN id uuid;

