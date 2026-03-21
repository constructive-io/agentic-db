-- Deploy: schemas/agentic_db_app_public/tables/threads/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/threads/table
-- requires: schemas/agentic_db_app_public/tables/chat_messages/columns/embedding/column


GRANT UPDATE ON agentic_db_app_public.threads TO authenticated;

