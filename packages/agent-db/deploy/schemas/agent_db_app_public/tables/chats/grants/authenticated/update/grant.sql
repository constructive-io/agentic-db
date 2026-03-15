-- Deploy: schemas/agent_db_app_public/tables/chats/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chats/table
-- requires: schemas/agent_db_app_public/tables/execution_log/columns/duration_ms/column


GRANT UPDATE ON agent_db_app_public.chats TO authenticated;

