-- Deploy: schemas/agentic_db_app_public/tables/chat_messages/indexes/chat_messages_role_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chat_messages/table
-- requires: schemas/agentic_db_app_public/tables/chat_messages/columns/role/column
-- requires: schemas/agentic_db_app_public/tables/chats/indexes/chats_started_at_idx


CREATE INDEX chat_messages_role_idx ON agentic_db_app_public.chat_messages USING BTREE ( role );

