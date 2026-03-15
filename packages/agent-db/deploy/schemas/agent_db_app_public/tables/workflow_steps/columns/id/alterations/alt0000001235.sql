-- Deploy: schemas/agent_db_app_public/tables/workflow_steps/columns/id/alterations/alt0000001235
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflow_steps/table
-- requires: schemas/agent_db_app_public/tables/workflows/columns/tags/column
-- requires: schemas/agent_db_app_public/tables/workflow_steps/columns/id/column


ALTER TABLE agent_db_app_public.workflow_steps 
  ALTER COLUMN id SET NOT NULL;

