-- Deploy: schemas/agentic_db_app_public/tables/trips_chunks/columns/content/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/table
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.trips_chunks 
  ADD COLUMN content text;

