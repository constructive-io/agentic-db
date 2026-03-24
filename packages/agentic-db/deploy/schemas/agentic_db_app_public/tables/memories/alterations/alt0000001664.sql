-- Deploy: schemas/agentic_db_app_public/tables/memories/alterations/alt0000001664
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE "agentic_db_app_public".memories 
  DISABLE ROW LEVEL SECURITY;

