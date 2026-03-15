-- Deploy: schemas/agent_db_app_public/tables/chat_messages/indexes/chat_messages_thread_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chat_messages/table
-- requires: schemas/agent_db_app_public/tables/chat_messages/columns/thread_id/column
-- requires: schemas/agent_db_app_public/tables/chat_messages/indexes/chat_messages_chat_id_idx


CREATE INDEX chat_messages_thread_id_idx ON agent_db_app_public.chat_messages USING BTREE ( thread_id );

