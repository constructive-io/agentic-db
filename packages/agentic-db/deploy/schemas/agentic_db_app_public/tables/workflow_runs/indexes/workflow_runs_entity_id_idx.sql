-- Deploy: schemas/agentic_db_app_public/tables/workflow_runs/indexes/workflow_runs_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflow_runs/table
-- requires: schemas/agentic_db_app_public/tables/workflow_runs/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/columns/timeout_ms/column


CREATE INDEX workflow_runs_entity_id_idx ON "agentic_db_app_public".workflow_runs USING BTREE ( entity_id );

