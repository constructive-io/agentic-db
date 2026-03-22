-- Deploy: schemas/agentic_db_app_public/tables/place_chunks/columns/place_id/alterations/alt0000001782
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/place_chunks/table
-- requires: schemas/agentic_db_app_public/tables/place_chunks/columns/place_id/column
-- requires: schemas/agentic_db_app_public/tables/trip_chunks/indexes/trip_chunks_trip_id_idx


ALTER TABLE "agentic_db_app_public".place_chunks 
  ALTER COLUMN place_id SET NOT NULL;

