-- Deploy: schemas/agentic_db_app_public/tables/session_archive_chunks/columns/content/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_archive_chunks/table
-- requires: schemas/agentic_db_app_public/tables/session_archive_chunks/columns/chunk_index/alterations/alt0000002342


ALTER TABLE "agentic_db_app_public".session_archive_chunks 
  ADD COLUMN content text;

