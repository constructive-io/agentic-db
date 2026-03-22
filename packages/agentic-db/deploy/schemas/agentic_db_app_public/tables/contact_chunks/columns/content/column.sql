-- Deploy: schemas/agentic_db_app_public/tables/contact_chunks/columns/content/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_chunks/table
-- requires: schemas/agentic_db_app_public/tables/contact_chunks/columns/chunk_index/alterations/alt0000000975


ALTER TABLE "agentic_db_app_public".contact_chunks 
  ADD COLUMN content text;

