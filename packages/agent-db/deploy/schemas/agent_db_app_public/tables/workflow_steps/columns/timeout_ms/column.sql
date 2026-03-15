-- Deploy: schemas/agent_db_app_public/tables/workflow_steps/columns/timeout_ms/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflow_steps/table
-- requires: schemas/agent_db_app_public/tables/workflow_steps/columns/on_failure_step/column


ALTER TABLE agent_db_app_public.workflow_steps 
  ADD COLUMN timeout_ms int;

