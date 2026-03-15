-- Revert: schemas/agent_db_limits_public/tables/org_limits/policies/enable_row_level_security


ALTER TABLE agent_db_limits_public.org_limits 
  DISABLE ROW LEVEL SECURITY;


