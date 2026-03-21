-- Deploy: schemas/agentic_db_app_public/tables/chats/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chats/table
-- requires: schemas/agentic_db_app_public/tables/execution_log/columns/duration_ms/column


GRANT INSERT ON agentic_db_app_public.chats TO authenticated;

