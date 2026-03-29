-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails_chunks/alterations/alt0000011199
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE agentic_db_app_public.hiking_trails_chunks 
  DISABLE ROW LEVEL SECURITY;

