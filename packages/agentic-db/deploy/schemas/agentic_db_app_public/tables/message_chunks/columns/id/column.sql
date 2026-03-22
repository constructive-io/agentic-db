-- Deploy: schemas/agentic_db_app_public/tables/message_chunks/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/message_chunks/table
-- requires: schemas/agentic_db_app_public/tables/conversation_chunks/triggers/conversation_chunks_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".message_chunks 
  ADD COLUMN id uuid;

