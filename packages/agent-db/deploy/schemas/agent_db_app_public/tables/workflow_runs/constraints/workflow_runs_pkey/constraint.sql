-- Deploy: schemas/agent_db_app_public/tables/workflow_runs/constraints/workflow_runs_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflow_runs/table
-- requires: schemas/agent_db_app_public/tables/workflow_steps/columns/timeout_ms/column


ALTER TABLE agent_db_app_public.workflow_runs 
  ADD CONSTRAINT workflow_runs_pkey PRIMARY KEY (id);

