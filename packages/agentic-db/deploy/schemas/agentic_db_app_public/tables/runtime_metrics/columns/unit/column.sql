-- Deploy: schemas/agentic_db_app_public/tables/runtime_metrics/columns/unit/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/table
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/columns/metric_value/alterations/alt0000001373


ALTER TABLE "agentic_db_app_public".runtime_metrics 
  ADD COLUMN unit text;

