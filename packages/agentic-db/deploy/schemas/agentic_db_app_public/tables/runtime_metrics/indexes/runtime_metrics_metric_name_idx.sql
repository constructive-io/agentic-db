-- Deploy: schemas/agentic_db_app_public/tables/runtime_metrics/indexes/runtime_metrics_metric_name_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/columns/metric_name/column


CREATE INDEX runtime_metrics_metric_name_idx ON agentic_db_app_public.runtime_metrics USING BTREE ( metric_name );

