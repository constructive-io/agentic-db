-- Deploy: schemas/agent_db_app_public/tables/agent_tools/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agent_tools/table
-- requires: schemas/agent_db_app_public/tables/workflow_runs/constraints/workflow_runs_workflow_id_fkey/constraint


GRANT INSERT ON "agent_db_app_public".agent_tools TO authenticated;

