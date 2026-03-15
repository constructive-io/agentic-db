-- Deploy: schemas/agent_db_app_public/tables/workflow_steps/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflow_steps/table
-- requires: schemas/agent_db_app_public/tables/workflows/columns/tags/column


GRANT SELECT ON agent_db_app_public.workflow_steps TO authenticated;

