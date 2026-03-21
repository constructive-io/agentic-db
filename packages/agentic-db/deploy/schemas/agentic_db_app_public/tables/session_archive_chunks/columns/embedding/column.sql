-- Deploy: schemas/agentic_db_app_public/tables/session_archive_chunks/columns/embedding/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_archive_chunks/table
-- requires: schemas/agentic_db_app_public/tables/session_archive_chunks/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".session_archive_chunks 
  ADD COLUMN embedding vector(768);

