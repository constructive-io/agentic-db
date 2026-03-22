-- Deploy: schemas/agentic_db_app_public/tables/message_chunks/constraints/message_chunks_message_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/message_chunks/table
-- requires: schemas/agentic_db_app_public/tables/conversation_chunks/indexes/conversation_chunks_conversation_id_idx


ALTER TABLE "agentic_db_app_public".message_chunks 
  ADD CONSTRAINT message_chunks_message_id_fkey 
    FOREIGN KEY(message_id) 
    REFERENCES "agentic_db_app_public".messages (id) 
    ON DELETE CASCADE;

