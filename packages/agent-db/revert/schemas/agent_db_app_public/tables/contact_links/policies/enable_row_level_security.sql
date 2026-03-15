-- Revert: schemas/agent_db_app_public/tables/contact_links/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.contact_links 
  DISABLE ROW LEVEL SECURITY;


