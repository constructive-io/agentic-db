-- Deploy: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/runtime_state_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/table
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/updated_at/alterations/alt0000001360


ALTER TABLE "agentic_db_app_public".runtime_artifacts 
  ADD COLUMN runtime_state_id uuid;

