-- Deploy: schemas/agentic_db_app_public/tables/places_chunks/alterations/alt0000005907
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places_chunks/table
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.places_chunks 
  DISABLE ROW LEVEL SECURITY;

