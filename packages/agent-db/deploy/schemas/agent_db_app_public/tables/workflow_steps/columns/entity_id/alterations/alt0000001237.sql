-- Deploy: schemas/agent_db_app_public/tables/workflow_steps/columns/entity_id/alterations/alt0000001237
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflow_steps/table
-- requires: schemas/agent_db_app_public/tables/workflows/columns/tags/column
-- requires: schemas/agent_db_app_public/tables/workflow_steps/columns/entity_id/column


ALTER TABLE agent_db_app_public.workflow_steps 
  ALTER COLUMN entity_id SET NOT NULL;

