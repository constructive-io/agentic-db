-- Deploy: schemas/agentic_db_app_public/tables/runtime_state_chunks/columns/runtime_state_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_state_chunks/table
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/indexes/runtime_metrics_runtime_state_id_idx


ALTER TABLE agentic_db_app_public.runtime_state_chunks 
  ADD COLUMN runtime_state_id uuid;

