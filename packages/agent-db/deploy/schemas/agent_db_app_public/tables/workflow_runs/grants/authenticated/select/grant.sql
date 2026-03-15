-- Deploy: schemas/agent_db_app_public/tables/workflow_runs/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflow_runs/table
-- requires: schemas/agent_db_app_public/tables/workflow_steps/columns/timeout_ms/column


GRANT SELECT ON agent_db_app_public.workflow_runs TO authenticated;

