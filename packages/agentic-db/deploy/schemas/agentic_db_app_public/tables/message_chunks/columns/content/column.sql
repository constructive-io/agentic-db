-- Deploy: schemas/agentic_db_app_public/tables/message_chunks/columns/content/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/message_chunks/table
-- requires: schemas/agentic_db_app_public/tables/message_chunks/columns/chunk_index/alterations/alt0000002559


ALTER TABLE "agentic_db_app_public".message_chunks 
  ADD COLUMN content text;

