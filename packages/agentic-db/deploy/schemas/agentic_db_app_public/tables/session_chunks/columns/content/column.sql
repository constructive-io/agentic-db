-- Deploy: schemas/agentic_db_app_public/tables/session_chunks/columns/content/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_chunks/table
-- requires: schemas/agentic_db_app_public/tables/session_chunks/columns/chunk_index/alterations/alt0000002282


ALTER TABLE "agentic_db_app_public".session_chunks 
  ADD COLUMN content text;

