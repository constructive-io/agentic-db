-- Deploy: schemas/agent_db_app_public/tables/workflow_steps/columns/action_type/alterations/alt0000001244
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflow_steps/table
-- requires: schemas/agent_db_app_public/tables/workflow_steps/columns/action_type/column
-- requires: schemas/agent_db_app_public/tables/workflow_steps/columns/step_order/alterations/alt0000001243


ALTER TABLE agent_db_app_public.workflow_steps 
  ALTER COLUMN action_type SET NOT NULL;

