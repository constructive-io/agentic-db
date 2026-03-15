-- Deploy: schemas/agent_db_app_public/tables/chat_messages/indexes/chat_messages_role_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chat_messages/table
-- requires: schemas/agent_db_app_public/tables/chat_messages/columns/role/column
-- requires: schemas/agent_db_app_public/tables/chat_messages/indexes/chat_messages_thread_id_idx


CREATE INDEX chat_messages_role_idx ON agent_db_app_public.chat_messages USING BTREE ( role );

