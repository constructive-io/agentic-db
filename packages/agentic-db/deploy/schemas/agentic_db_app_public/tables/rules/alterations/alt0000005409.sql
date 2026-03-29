-- Deploy: schemas/agentic_db_app_public/tables/rules/alterations/alt0000005409
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.rules 
  DISABLE ROW LEVEL SECURITY;

