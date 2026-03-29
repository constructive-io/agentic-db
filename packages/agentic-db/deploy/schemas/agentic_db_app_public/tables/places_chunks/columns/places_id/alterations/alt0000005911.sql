-- Deploy: schemas/agentic_db_app_public/tables/places_chunks/columns/places_id/alterations/alt0000005911
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places_chunks/table
-- requires: schemas/agentic_db_app_public/tables/places_chunks/columns/places_id/column
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.places_chunks 
  ALTER COLUMN places_id SET NOT NULL;

