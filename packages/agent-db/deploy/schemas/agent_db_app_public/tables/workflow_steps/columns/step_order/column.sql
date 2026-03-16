-- Deploy: schemas/agent_db_app_public/tables/workflow_steps/columns/step_order/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflow_steps/table
-- requires: schemas/agent_db_app_public/tables/workflow_steps/columns/workflow_id/alterations/alt0000002075


ALTER TABLE "agent_db_app_public".workflow_steps 
  ADD COLUMN step_order int;

