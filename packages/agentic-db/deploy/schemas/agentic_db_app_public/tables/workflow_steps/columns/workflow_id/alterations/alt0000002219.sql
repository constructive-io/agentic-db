-- Deploy: schemas/agentic_db_app_public/tables/workflow_steps/columns/workflow_id/alterations/alt0000002219
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/table
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/columns/workflow_id/column
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/columns/updated_at/alterations/alt0000002218


ALTER TABLE "agentic_db_app_public".workflow_steps 
  ALTER COLUMN workflow_id SET NOT NULL;

