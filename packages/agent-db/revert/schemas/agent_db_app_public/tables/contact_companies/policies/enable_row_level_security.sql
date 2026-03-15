-- Revert: schemas/agent_db_app_public/tables/contact_companies/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.contact_companies 
  DISABLE ROW LEVEL SECURITY;


