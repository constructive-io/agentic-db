-- Deploy: schemas/agentic_db_app_public/tables/skills_chunks/alterations/alt0000005521
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills_chunks/table
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.skills_chunks 
  DISABLE ROW LEVEL SECURITY;

