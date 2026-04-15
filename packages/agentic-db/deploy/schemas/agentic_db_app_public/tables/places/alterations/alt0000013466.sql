-- Deploy: schemas/agentic_db_app_public/tables/places/alterations/alt0000013466
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE agentic_db_app_public.places 
  DISABLE ROW LEVEL SECURITY;

