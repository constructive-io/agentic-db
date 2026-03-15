-- Deploy: schemas/agent_db_app_public/tables/workflow_steps/columns/action_config/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflow_steps/table
-- requires: schemas/agent_db_app_public/tables/workflow_steps/columns/action_type/alterations/alt0000004462


ALTER TABLE "agent_db_app_public".workflow_steps 
  ADD COLUMN action_config jsonb;

