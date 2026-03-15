-- Deploy: schemas/agent_db_app_public/tables/workflow_runs/indexes/workflow_runs_workflow_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflow_runs/table
-- requires: schemas/agent_db_app_public/tables/workflow_runs/columns/workflow_id/column
-- requires: schemas/agent_db_app_public/tables/workflow_steps/indexes/workflow_steps_step_order_idx


CREATE INDEX workflow_runs_workflow_id_idx ON agent_db_app_public.workflow_runs USING BTREE ( workflow_id );

