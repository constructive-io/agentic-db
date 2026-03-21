-- Revert: schemas/agentic_db_app_public/tables/thread_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".thread_chunks 
  DISABLE ROW LEVEL SECURITY;


