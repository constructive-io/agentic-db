-- Revert: schemas/agentic_db_app_public/tables/companies/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.companies 
  DISABLE ROW LEVEL SECURITY;


