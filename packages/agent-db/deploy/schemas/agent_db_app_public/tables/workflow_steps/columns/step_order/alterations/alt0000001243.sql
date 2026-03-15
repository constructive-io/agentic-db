-- Deploy: schemas/agent_db_app_public/tables/workflow_steps/columns/step_order/alterations/alt0000001243
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflow_steps/table
-- requires: schemas/agent_db_app_public/tables/workflow_steps/columns/step_order/column
-- requires: schemas/agent_db_app_public/tables/workflow_steps/columns/workflow_id/alterations/alt0000001242


ALTER TABLE agent_db_app_public.workflow_steps 
  ALTER COLUMN step_order SET NOT NULL;

