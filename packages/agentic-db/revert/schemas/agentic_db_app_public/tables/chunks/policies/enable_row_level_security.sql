-- Revert: schemas/agentic_db_app_public/tables/chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".chunks 
  DISABLE ROW LEVEL SECURITY;


