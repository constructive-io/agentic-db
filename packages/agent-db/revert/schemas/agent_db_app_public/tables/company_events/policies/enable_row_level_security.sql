-- Revert: schemas/agent_db_app_public/tables/company_events/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.company_events 
  DISABLE ROW LEVEL SECURITY;


