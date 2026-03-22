-- Revert: schemas/agentic_db_app_public/tables/company_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".company_chunks 
  DISABLE ROW LEVEL SECURITY;


