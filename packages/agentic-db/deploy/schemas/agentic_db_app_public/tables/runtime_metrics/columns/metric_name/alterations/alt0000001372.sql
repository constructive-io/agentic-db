-- Deploy: schemas/agentic_db_app_public/tables/runtime_metrics/columns/metric_name/alterations/alt0000001372
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/table
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/columns/metric_name/column
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/columns/runtime_state_id/alterations/alt0000001371


ALTER TABLE "agentic_db_app_public".runtime_metrics 
  ALTER COLUMN metric_name SET NOT NULL;

