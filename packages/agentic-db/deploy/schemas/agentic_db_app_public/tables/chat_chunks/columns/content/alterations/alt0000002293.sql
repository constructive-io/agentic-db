-- Deploy: schemas/agentic_db_app_public/tables/chat_chunks/columns/content/alterations/alt0000002293
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chat_chunks/table
-- requires: schemas/agentic_db_app_public/tables/chat_chunks/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/chat_chunks/columns/chunk_index/alterations/alt0000002292


ALTER TABLE "agentic_db_app_public".chat_chunks 
  ALTER COLUMN content SET NOT NULL;

