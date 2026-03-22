-- Deploy: schemas/agentic_db_app_public/tables/runtime_metrics/indexes/runtime_metrics_runtime_state_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/table
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/columns/runtime_state_id/column
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/indexes/runtime_artifacts_runtime_state_id_idx


CREATE INDEX runtime_metrics_runtime_state_id_idx ON "agentic_db_app_public".runtime_metrics USING BTREE ( runtime_state_id );

