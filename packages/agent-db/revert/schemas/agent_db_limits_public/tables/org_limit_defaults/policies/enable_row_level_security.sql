-- Revert: schemas/agent_db_limits_public/tables/org_limit_defaults/policies/enable_row_level_security


ALTER TABLE agent_db_limits_public.org_limit_defaults 
  DISABLE ROW LEVEL SECURITY;


