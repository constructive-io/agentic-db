-- Revert: schemas/agentic_db_app_public/tables/session_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".session_chunks 
  DISABLE ROW LEVEL SECURITY;


