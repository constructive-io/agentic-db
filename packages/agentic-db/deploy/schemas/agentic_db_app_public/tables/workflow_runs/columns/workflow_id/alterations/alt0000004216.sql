-- Deploy: schemas/agentic_db_app_public/tables/workflow_runs/columns/workflow_id/alterations/alt0000004216
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflow_runs/table
-- requires: schemas/agentic_db_app_public/tables/workflow_runs/columns/workflow_id/column
-- requires: schemas/agentic_db_app_public/tables/workflow_runs/columns/updated_at/alterations/alt0000004215


ALTER TABLE agentic_db_app_public.workflow_runs 
  ALTER COLUMN workflow_id SET NOT NULL;

