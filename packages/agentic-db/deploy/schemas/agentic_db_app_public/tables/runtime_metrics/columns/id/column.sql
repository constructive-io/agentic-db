-- Deploy: schemas/agentic_db_app_public/tables/runtime_metrics/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/table
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/size_bytes/column


ALTER TABLE "agentic_db_app_public".runtime_metrics 
  ADD COLUMN id uuid;

