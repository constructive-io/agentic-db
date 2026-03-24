-- Revert: schemas/agentic_db_app_public/tables/runtime_states_chunks/columns/updated_at/alterations/alt0000001346


ALTER TABLE "agentic_db_app_public".runtime_states_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;


