-- Revert: schemas/agentic_db_app_public/tables/workflows/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".workflows 
  DISABLE ROW LEVEL SECURITY;


