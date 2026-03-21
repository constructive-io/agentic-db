-- Deploy: schemas/agentic_db_app_public/tables/chats/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chats/table
-- requires: schemas/agentic_db_app_public/tables/execution_log/columns/duration_ms/column


GRANT DELETE ON agentic_db_app_public.chats TO authenticated;

