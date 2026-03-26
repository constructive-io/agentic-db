-- Revert: schemas/agentic_db_app_public/tables/runtime_states_chunks/columns/id/alterations/alt0000001411


ALTER TABLE "agentic_db_app_public".runtime_states_chunks 
  ALTER COLUMN id DROP NOT NULL;


