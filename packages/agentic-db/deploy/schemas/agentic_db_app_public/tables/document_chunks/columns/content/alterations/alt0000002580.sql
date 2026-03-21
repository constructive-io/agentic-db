-- Deploy: schemas/agentic_db_app_public/tables/document_chunks/columns/content/alterations/alt0000002580
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/document_chunks/table
-- requires: schemas/agentic_db_app_public/tables/document_chunks/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/document_chunks/columns/chunk_index/alterations/alt0000002579


ALTER TABLE "agentic_db_app_public".document_chunks 
  ALTER COLUMN content SET NOT NULL;

