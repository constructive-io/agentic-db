-- Deploy: schemas/agent_db_app_public/tables/rules/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/rules/table
-- requires: schemas/agent_db_app_public/tables/tasks/columns/embedding/column


GRANT SELECT ON agent_db_app_public.rules TO authenticated;

