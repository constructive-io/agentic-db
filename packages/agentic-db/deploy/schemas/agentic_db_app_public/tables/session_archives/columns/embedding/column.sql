-- Deploy: schemas/agentic_db_app_public/tables/session_archives/columns/embedding/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_archives/table
-- requires: schemas/agentic_db_app_public/tables/session_archives/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".session_archives 
  ADD COLUMN embedding vector(768);

