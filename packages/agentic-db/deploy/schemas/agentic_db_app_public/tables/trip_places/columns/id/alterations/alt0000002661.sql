-- Deploy: schemas/agentic_db_app_public/tables/trip_places/columns/id/alterations/alt0000002661
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trip_places/table
-- requires: schemas/agentic_db_app_public/tables/trip_places/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE "agentic_db_app_public".trip_places 
  ALTER COLUMN id SET NOT NULL;

