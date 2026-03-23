-- Revert: schemas/agentic_db_app_public/tables/rules_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".rules_chunks 
  DISABLE ROW LEVEL SECURITY;


