-- Deploy: schemas/agent_db_app_public/tables/workflow_steps/columns/on_success_step/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflow_steps/table
-- requires: schemas/agent_db_app_public/tables/workflow_steps/columns/action_config/column


ALTER TABLE "agent_db_app_public".workflow_steps 
  ADD COLUMN on_success_step int;

