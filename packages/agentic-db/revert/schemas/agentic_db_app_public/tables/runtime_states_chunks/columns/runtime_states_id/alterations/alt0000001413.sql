-- Revert: schemas/agentic_db_app_public/tables/runtime_states_chunks/columns/runtime_states_id/alterations/alt0000001413


ALTER TABLE "agentic_db_app_public".runtime_states_chunks 
  ALTER COLUMN runtime_states_id DROP NOT NULL;


