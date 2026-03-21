-- Deploy: schemas/agentic_db_app_public/tables/chat_message_chunks/indexes/chat_message_chunks_chat_message_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chat_message_chunks/table
-- requires: schemas/agentic_db_app_public/tables/chat_chunks/indexes/chat_chunks_chat_id_idx
-- requires: schemas/agentic_db_app_public/tables/chat_message_chunks/columns/chat_message_id/column


CREATE INDEX chat_message_chunks_chat_message_id_idx ON agentic_db_app_public.chat_message_chunks USING BTREE ( chat_message_id );

