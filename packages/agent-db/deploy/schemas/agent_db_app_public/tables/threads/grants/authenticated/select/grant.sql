-- Deploy: schemas/agent_db_app_public/tables/threads/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/threads/table
-- requires: schemas/agent_db_app_public/tables/chat_messages/columns/embedding/column


GRANT SELECT ON agent_db_app_public.threads TO authenticated;

