-- Revert: schemas/agent_db_permissions_public/tables/org_permission_defaults/policies/enable_row_level_security


ALTER TABLE agent_db_permissions_public.org_permission_defaults 
  DISABLE ROW LEVEL SECURITY;


