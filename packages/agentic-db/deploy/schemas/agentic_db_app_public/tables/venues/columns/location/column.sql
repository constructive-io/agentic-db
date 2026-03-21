-- Deploy: schemas/agentic_db_app_public/tables/venues/columns/location/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/venues/columns/status/alterations/alt0000001749


ALTER TABLE "agentic_db_app_public".venues 
  ADD COLUMN location geography(Point,4326);

