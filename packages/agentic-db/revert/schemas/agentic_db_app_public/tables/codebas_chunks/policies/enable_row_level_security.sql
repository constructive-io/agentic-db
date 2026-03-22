-- Revert: schemas/agentic_db_app_public/tables/codebas_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".codebas_chunks 
  DISABLE ROW LEVEL SECURITY;


