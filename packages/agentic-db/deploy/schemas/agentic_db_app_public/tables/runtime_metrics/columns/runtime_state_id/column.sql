-- Deploy: schemas/agentic_db_app_public/tables/runtime_metrics/columns/runtime_state_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/table
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/columns/updated_at/alterations/alt0000001370


ALTER TABLE "agentic_db_app_public".runtime_metrics 
  ADD COLUMN runtime_state_id uuid;

