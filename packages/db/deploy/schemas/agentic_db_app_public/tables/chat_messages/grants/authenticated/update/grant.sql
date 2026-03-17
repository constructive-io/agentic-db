-- Deploy: schemas/agentic_db_app_public/tables/chat_messages/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chat_messages/table
-- requires: schemas/agentic_db_app_public/tables/chats/columns/embedding/column


GRANT UPDATE ON "agentic_db_app_public".chat_messages TO authenticated;

