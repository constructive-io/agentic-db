-- Deploy: schemas/agentic_db_app_public/tables/workflow_steps/columns/workflow_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/table
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/columns/updated_at/alterations/alt0000001222


ALTER TABLE "agentic_db_app_public".workflow_steps 
  ADD COLUMN workflow_id uuid;

