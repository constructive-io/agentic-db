-- Deploy: schemas/agentic_db_app_public/tables/agent_tools/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tools/table
-- requires: schemas/agentic_db_app_public/tables/workflow_runs/constraints/workflow_runs_workflow_id_fkey/constraint


GRANT SELECT ON "agentic_db_app_public".agent_tools TO authenticated;

