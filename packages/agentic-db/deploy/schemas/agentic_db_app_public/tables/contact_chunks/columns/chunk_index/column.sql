-- Deploy: schemas/agentic_db_app_public/tables/contact_chunks/columns/chunk_index/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_chunks/table
-- requires: schemas/agentic_db_app_public/tables/contact_chunks/columns/updated_at/alterations/alt0000000974


ALTER TABLE "agentic_db_app_public".contact_chunks 
  ADD COLUMN chunk_index int;

