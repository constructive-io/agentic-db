-- Deploy: schemas/agentic_db_app_public/tables/runtime_metrics/columns/meta/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/table


ALTER TABLE agentic_db_app_public.runtime_metrics 
  ADD COLUMN meta jsonb;

