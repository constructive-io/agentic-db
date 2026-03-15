-- Revert: schemas/agent_db_app_public/tables/companies/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.companies 
  DISABLE ROW LEVEL SECURITY;


