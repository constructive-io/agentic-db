-- Deploy: schemas/agentic_db_app_public/tables/workflow_runs/columns/workflow_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflow_runs/table
-- requires: schemas/agentic_db_app_public/tables/workflow_runs/columns/updated_at/alterations/alt0000001233


ALTER TABLE "agentic_db_app_public".workflow_runs 
  ADD COLUMN workflow_id uuid;

