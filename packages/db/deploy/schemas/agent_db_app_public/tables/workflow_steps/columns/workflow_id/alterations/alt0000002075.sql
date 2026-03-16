-- Deploy: schemas/agent_db_app_public/tables/workflow_steps/columns/workflow_id/alterations/alt0000002075
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflow_steps/table
-- requires: schemas/agent_db_app_public/tables/workflow_steps/columns/workflow_id/column
-- requires: schemas/agent_db_app_public/tables/workflow_steps/columns/updated_at/alterations/alt0000002074


ALTER TABLE "agent_db_app_public".workflow_steps 
  ALTER COLUMN workflow_id SET NOT NULL;

