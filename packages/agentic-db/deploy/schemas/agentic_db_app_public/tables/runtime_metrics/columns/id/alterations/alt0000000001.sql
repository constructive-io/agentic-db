-- Deploy: schemas/agentic_db_app_public/tables/runtime_metrics/columns/id/alterations/alt0000000001
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/table
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/columns/id/column


ALTER TABLE agentic_db_app_public.runtime_metrics 
  ALTER COLUMN id SET NOT NULL;

