-- Revert: schemas/agentic_db_app_public/tables/session_archive_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".session_archive_chunks 
  DISABLE ROW LEVEL SECURITY;


