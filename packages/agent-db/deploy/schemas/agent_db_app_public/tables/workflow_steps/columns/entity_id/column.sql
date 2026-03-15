-- Deploy: schemas/agent_db_app_public/tables/workflow_steps/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflow_steps/table
-- requires: schemas/agent_db_app_public/tables/workflows/columns/tags/column


ALTER TABLE "agent_db_app_public".workflow_steps 
  ADD COLUMN entity_id uuid;

