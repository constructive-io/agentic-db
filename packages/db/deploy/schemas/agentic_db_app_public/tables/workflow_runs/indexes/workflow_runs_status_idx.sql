-- Deploy: schemas/agentic_db_app_public/tables/workflow_runs/indexes/workflow_runs_status_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflow_runs/table
-- requires: schemas/agentic_db_app_public/tables/workflow_runs/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/workflow_runs/indexes/workflow_runs_workflow_id_idx


CREATE INDEX workflow_runs_status_idx ON "agentic_db_app_public".workflow_runs USING BTREE ( status );

