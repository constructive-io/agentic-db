-- Deploy: schemas/agentic_db_app_public/tables/trip_hiking_trails/columns/entity_id/alterations/alt0000001750
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trip_hiking_trails/table
-- requires: schemas/agentic_db_app_public/tables/trip_hiking_trails/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE "agentic_db_app_public".trip_hiking_trails 
  ALTER COLUMN entity_id SET NOT NULL;

