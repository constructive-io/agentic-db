-- Revert: schemas/agentic_db_app_public/tables/runtime_state_chunks/columns/runtime_state_id/alterations/alt0000001505


ALTER TABLE "agentic_db_app_public".runtime_state_chunks 
  ALTER COLUMN runtime_state_id DROP NOT NULL;


