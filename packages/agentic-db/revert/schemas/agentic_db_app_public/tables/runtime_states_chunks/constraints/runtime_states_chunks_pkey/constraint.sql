-- Revert: schemas/agentic_db_app_public/tables/runtime_states_chunks/constraints/runtime_states_chunks_pkey/constraint


ALTER TABLE "agentic_db_app_public".runtime_states_chunks 
  DROP CONSTRAINT runtime_states_chunks_pkey;


