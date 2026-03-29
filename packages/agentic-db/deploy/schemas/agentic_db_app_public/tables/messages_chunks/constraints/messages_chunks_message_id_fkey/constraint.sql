-- Deploy: schemas/agentic_db_app_public/tables/messages_chunks/constraints/messages_chunks_message_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/messages_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/indexes/tool_definitions_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.messages_chunks 
  ADD CONSTRAINT messages_chunks_message_id_fkey 
    FOREIGN KEY(message_id) 
    REFERENCES agentic_db_app_public.messages (id) 
    ON DELETE CASCADE;

