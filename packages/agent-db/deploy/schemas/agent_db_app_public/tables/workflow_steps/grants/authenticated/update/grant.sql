-- Deploy: schemas/agent_db_app_public/tables/workflow_steps/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflow_steps/table
-- requires: schemas/agent_db_app_public/tables/workflows/columns/tags/column


GRANT UPDATE ON "agent_db_app_public".workflow_steps TO authenticated;

