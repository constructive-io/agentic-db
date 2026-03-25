-- Revert: schemas/agentic_db_app_public/tables/runtime_states_chunks/columns/created_at/alterations/alt0000001419


ALTER TABLE "agentic_db_app_public".runtime_states_chunks 
  ALTER COLUMN created_at DROP DEFAULT;


