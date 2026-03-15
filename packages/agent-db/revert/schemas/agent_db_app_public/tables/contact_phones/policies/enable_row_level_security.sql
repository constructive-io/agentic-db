-- Revert: schemas/agent_db_app_public/tables/contact_phones/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.contact_phones 
  DISABLE ROW LEVEL SECURITY;


