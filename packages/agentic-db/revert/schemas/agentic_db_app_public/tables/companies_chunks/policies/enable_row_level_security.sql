-- Revert: schemas/agentic_db_app_public/tables/companies_chunks/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.companies_chunks 
  DISABLE ROW LEVEL SECURITY;


