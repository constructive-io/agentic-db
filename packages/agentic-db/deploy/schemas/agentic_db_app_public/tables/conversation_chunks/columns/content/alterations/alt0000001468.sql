-- Deploy: schemas/agentic_db_app_public/tables/conversation_chunks/columns/content/alterations/alt0000001468
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversation_chunks/table
-- requires: schemas/agentic_db_app_public/tables/conversation_chunks/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/conversation_chunks/columns/chunk_index/alterations/alt0000001467


ALTER TABLE "agentic_db_app_public".conversation_chunks 
  ALTER COLUMN content SET NOT NULL;

