-- Deploy: schemas/agentic_db_app_public/tables/runtime_metrics/columns/metric_value/alterations/alt0000001373
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/table
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/columns/metric_value/column
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/columns/metric_name/alterations/alt0000001372


ALTER TABLE "agentic_db_app_public".runtime_metrics 
  ALTER COLUMN metric_value SET NOT NULL;

