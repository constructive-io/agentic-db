-- Deploy: schemas/agentic_db_app_public/tables/workflow_runs/columns/status/alterations/alt0000002231
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflow_runs/table
-- requires: schemas/agentic_db_app_public/tables/workflow_runs/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/workflow_runs/columns/workflow_id/alterations/alt0000002230



ALTER TABLE "agentic_db_app_public".workflow_runs 
    ALTER COLUMN status SET DEFAULT 'pending';

