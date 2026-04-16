-- Deploy: schemas/agentic_db_app_public/tables/runtime_metrics/columns/metric_name/alterations/alt0000015547
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/columns/metric_name/column


ALTER TABLE agentic_db_app_public.runtime_metrics 
  ALTER COLUMN metric_name SET NOT NULL;

