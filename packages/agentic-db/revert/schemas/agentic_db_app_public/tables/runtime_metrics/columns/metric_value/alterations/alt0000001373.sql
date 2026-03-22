-- Revert: schemas/agentic_db_app_public/tables/runtime_metrics/columns/metric_value/alterations/alt0000001373


ALTER TABLE "agentic_db_app_public".runtime_metrics 
  ALTER COLUMN metric_value DROP NOT NULL;


