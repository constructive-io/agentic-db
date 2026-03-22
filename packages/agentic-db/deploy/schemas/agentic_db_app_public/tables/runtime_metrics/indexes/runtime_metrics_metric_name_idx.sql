-- Deploy: schemas/agentic_db_app_public/tables/runtime_metrics/indexes/runtime_metrics_metric_name_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/table
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/columns/metric_name/column
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/indexes/runtime_artifacts_artifact_type_idx


CREATE INDEX runtime_metrics_metric_name_idx ON "agentic_db_app_public".runtime_metrics USING BTREE ( metric_name );

