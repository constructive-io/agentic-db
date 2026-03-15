-- Deploy: schemas/agent_db_app_public/tables/workflow_steps/columns/workflow_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflow_steps/table
-- requires: schemas/agent_db_app_public/tables/workflow_steps/columns/updated_at/alterations/alt0000001241


ALTER TABLE agent_db_app_public.workflow_steps 
  ADD COLUMN workflow_id uuid;

