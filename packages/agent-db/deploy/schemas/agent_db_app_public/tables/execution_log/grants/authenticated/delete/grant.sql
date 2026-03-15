-- Deploy: schemas/agent_db_app_public/tables/execution_log/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/execution_log/table
-- requires: schemas/agent_db_app_public/tables/blueprints/columns/embedding/column


GRANT DELETE ON agent_db_app_public.execution_log TO authenticated;

