-- Revert: schemas/agentic_db_app_public/tables/repository_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".repository_chunks 
  DISABLE ROW LEVEL SECURITY;


