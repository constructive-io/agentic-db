-- Revert: schemas/agentic_db_app_public/tables/runtime_metrics/constraints/runtime_metrics_runtime_state_id_fkey/constraint


ALTER TABLE agentic_db_app_public.runtime_metrics 
  DROP CONSTRAINT runtime_metrics_runtime_state_id_fkey;


