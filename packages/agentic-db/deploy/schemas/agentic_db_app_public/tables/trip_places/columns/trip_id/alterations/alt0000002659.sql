-- Deploy: schemas/agentic_db_app_public/tables/trip_places/columns/trip_id/alterations/alt0000002659
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trip_places/table
-- requires: schemas/agentic_db_app_public/tables/trip_places/columns/trip_id/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE "agentic_db_app_public".trip_places 
  ALTER COLUMN trip_id SET NOT NULL;

