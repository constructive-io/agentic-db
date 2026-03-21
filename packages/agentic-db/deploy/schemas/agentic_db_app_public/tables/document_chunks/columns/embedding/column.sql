-- Deploy: schemas/agentic_db_app_public/tables/document_chunks/columns/embedding/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/document_chunks/table
-- requires: schemas/agentic_db_app_public/tables/document_chunks/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".document_chunks 
  ADD COLUMN embedding vector(768);

