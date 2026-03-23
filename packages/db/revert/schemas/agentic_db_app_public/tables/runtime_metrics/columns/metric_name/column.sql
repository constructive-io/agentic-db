-- Revert: schemas/agentic_db_app_public/tables/runtime_metrics/columns/metric_name/column


ALTER TABLE "agentic_db_app_public".runtime_metrics 
  DROP COLUMN metric_name RESTRICT;


