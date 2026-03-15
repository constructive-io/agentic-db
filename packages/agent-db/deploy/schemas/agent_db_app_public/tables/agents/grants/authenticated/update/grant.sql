-- Deploy: schemas/agent_db_app_public/tables/agents/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agents/table
-- requires: schemas/agent_db_app_public/tables/tasks/constraints/tasks_parent_task_id_fkey/constraint


GRANT UPDATE ON agent_db_app_public.agents TO authenticated;

