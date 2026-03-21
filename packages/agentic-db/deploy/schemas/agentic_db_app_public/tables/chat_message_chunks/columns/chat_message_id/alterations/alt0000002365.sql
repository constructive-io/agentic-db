-- Deploy: schemas/agentic_db_app_public/tables/chat_message_chunks/columns/chat_message_id/alterations/alt0000002365
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chat_message_chunks/table
-- requires: schemas/agentic_db_app_public/tables/chat_chunks/indexes/chat_chunks_chat_id_idx
-- requires: schemas/agentic_db_app_public/tables/chat_message_chunks/columns/chat_message_id/column


ALTER TABLE "agentic_db_app_public".chat_message_chunks 
  ALTER COLUMN chat_message_id SET NOT NULL;

