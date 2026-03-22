-- Revert: schemas/agentic_db_app_public/tables/project_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".project_chunks 
  DISABLE ROW LEVEL SECURITY;


