-- Deploy: schemas/agentic_db_app_public/tables/workflow_steps/columns/step_order/alterations/alt0000001224
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/table
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/columns/step_order/column
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/columns/workflow_id/alterations/alt0000001223


ALTER TABLE "agentic_db_app_public".workflow_steps 
  ALTER COLUMN step_order SET NOT NULL;

