-- Revert: schemas/agentic_db_app_public/tables/runtime_states_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".runtime_states_chunks 
  DISABLE ROW LEVEL SECURITY;


