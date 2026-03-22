-- Deploy: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/name/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/table
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/runtime_state_id/alterations/alt0000006005


ALTER TABLE agentic_db_app_public.runtime_artifacts 
  ADD COLUMN name text;

