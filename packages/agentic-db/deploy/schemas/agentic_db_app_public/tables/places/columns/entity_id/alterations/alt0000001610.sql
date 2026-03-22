-- Deploy: schemas/agentic_db_app_public/tables/places/columns/entity_id/alterations/alt0000001610
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places/table
-- requires: schemas/agentic_db_app_public/tables/places/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/trips/indexes/trips_location_gist_idx


ALTER TABLE "agentic_db_app_public".places 
  ALTER COLUMN entity_id SET NOT NULL;

