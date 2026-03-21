-- Deploy: schemas/agentic_db_app_public/tables/workflow_steps/columns/action_type/alterations/alt0000002221
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/table
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/columns/action_type/column
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/columns/step_order/alterations/alt0000002220


ALTER TABLE "agentic_db_app_public".workflow_steps 
  ALTER COLUMN action_type SET NOT NULL;

