-- Deploy: schemas/agentic_db_app_public/tables/agents_chunks/alterations/alt0000005471
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents_chunks/table
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.agents_chunks 
  DISABLE ROW LEVEL SECURITY;

