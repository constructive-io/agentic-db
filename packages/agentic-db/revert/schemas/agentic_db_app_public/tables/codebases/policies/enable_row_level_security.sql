-- Revert: schemas/agentic_db_app_public/tables/codebases/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".codebases 
  DISABLE ROW LEVEL SECURITY;


