-- Deploy: schemas/agent_db_app_public/tables/chat_messages/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chat_messages/table
-- requires: schemas/agent_db_app_public/tables/chats/columns/embedding/column


GRANT INSERT ON agent_db_app_public.chat_messages TO authenticated;

