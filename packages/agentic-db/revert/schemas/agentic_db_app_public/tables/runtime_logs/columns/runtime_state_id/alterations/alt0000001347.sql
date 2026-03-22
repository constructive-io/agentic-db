-- Revert: schemas/agentic_db_app_public/tables/runtime_logs/columns/runtime_state_id/alterations/alt0000001347


ALTER TABLE "agentic_db_app_public".runtime_logs 
  ALTER COLUMN runtime_state_id DROP NOT NULL;


