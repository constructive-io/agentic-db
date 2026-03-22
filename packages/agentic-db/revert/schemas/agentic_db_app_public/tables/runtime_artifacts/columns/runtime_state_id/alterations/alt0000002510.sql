-- Revert: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/runtime_state_id/alterations/alt0000002510


ALTER TABLE agentic_db_app_public.runtime_artifacts 
  ALTER COLUMN runtime_state_id DROP NOT NULL;


