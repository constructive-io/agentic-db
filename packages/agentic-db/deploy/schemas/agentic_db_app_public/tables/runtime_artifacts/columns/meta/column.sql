-- Deploy: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/meta/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/table
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/content/column


ALTER TABLE "agentic_db_app_public".runtime_artifacts 
  ADD COLUMN meta jsonb;

