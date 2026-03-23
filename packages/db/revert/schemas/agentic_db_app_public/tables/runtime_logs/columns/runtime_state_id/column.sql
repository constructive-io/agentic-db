-- Revert: schemas/agentic_db_app_public/tables/runtime_logs/columns/runtime_state_id/column


ALTER TABLE "agentic_db_app_public".runtime_logs 
  DROP COLUMN runtime_state_id RESTRICT;


