-- Revert: schemas/agentic_db_app_public/tables/runtime_metrics/columns/runtime_state_id/alterations/alt0000001485


ALTER TABLE "agentic_db_app_public".runtime_metrics 
  ALTER COLUMN runtime_state_id DROP NOT NULL;


