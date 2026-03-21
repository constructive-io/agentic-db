-- Deploy: schemas/agentic_db_app_public/tables/session_chunks/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_chunks/table
-- requires: schemas/agentic_db_app_public/tables/session_chunks/columns/content/alterations/alt0000002283


ALTER TABLE "agentic_db_app_public".session_chunks 
  ADD COLUMN embedding_text text;

