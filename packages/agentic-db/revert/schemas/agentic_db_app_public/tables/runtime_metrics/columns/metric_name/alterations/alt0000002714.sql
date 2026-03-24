-- Revert: schemas/agentic_db_app_public/tables/runtime_metrics/columns/metric_name/alterations/alt0000002714


ALTER TABLE agentic_db_app_public.runtime_metrics 
  ALTER COLUMN metric_name DROP NOT NULL;


