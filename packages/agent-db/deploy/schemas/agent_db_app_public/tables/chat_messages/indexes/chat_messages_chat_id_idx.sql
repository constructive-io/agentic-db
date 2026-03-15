-- Deploy: schemas/agent_db_app_public/tables/chat_messages/indexes/chat_messages_chat_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chat_messages/table
-- requires: schemas/agent_db_app_public/tables/chats/indexes/chats_started_at_idx
-- requires: schemas/agent_db_app_public/tables/chat_messages/columns/chat_id/column


CREATE INDEX chat_messages_chat_id_idx ON agent_db_app_public.chat_messages USING BTREE ( chat_id );

