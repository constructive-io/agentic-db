-- Deploy: schemas/agentic_db_app_public/tables/deal_chunks/columns/content/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_chunks/table
-- requires: schemas/agentic_db_app_public/tables/deal_chunks/columns/chunk_index/alterations/alt0000001810


ALTER TABLE "agentic_db_app_public".deal_chunks 
  ADD COLUMN content text;

