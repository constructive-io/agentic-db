-- Deploy: schemas/agentic_db_app_public/tables/chat_messages/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chat_messages/table
-- requires: schemas/agentic_db_app_public/tables/chats/columns/embedding/column


GRANT DELETE ON agentic_db_app_public.chat_messages TO authenticated;

