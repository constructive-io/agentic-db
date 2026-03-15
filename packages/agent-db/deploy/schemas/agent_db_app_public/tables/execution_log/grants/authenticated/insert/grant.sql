-- Deploy: schemas/agent_db_app_public/tables/execution_log/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/execution_log/table
-- requires: schemas/agent_db_app_public/tables/sessions/columns/embedding/column


GRANT INSERT ON agent_db_app_public.execution_log TO authenticated;

