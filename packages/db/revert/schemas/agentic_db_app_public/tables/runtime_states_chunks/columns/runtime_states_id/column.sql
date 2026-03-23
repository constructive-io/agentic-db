-- Revert: schemas/agentic_db_app_public/tables/runtime_states_chunks/columns/runtime_states_id/column


ALTER TABLE "agentic_db_app_public".runtime_states_chunks 
  DROP COLUMN runtime_states_id RESTRICT;


