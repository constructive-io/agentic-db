-- Deploy: schemas/agentic_db_app_public/tables/workflow_steps/columns/action_type/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/table
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/columns/step_order/alterations/alt0000001224


ALTER TABLE "agentic_db_app_public".workflow_steps 
  ADD COLUMN action_type text;

