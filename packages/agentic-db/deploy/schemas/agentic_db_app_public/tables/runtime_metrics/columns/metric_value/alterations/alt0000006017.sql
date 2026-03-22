-- Deploy: schemas/agentic_db_app_public/tables/runtime_metrics/columns/metric_value/alterations/alt0000006017
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/table
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/columns/metric_value/column
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/columns/metric_name/alterations/alt0000006016


ALTER TABLE agentic_db_app_public.runtime_metrics 
  ALTER COLUMN metric_value SET NOT NULL;

