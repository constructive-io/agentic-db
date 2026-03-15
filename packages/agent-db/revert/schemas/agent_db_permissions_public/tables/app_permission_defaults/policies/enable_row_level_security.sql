-- Revert: schemas/agent_db_permissions_public/tables/app_permission_defaults/policies/enable_row_level_security


ALTER TABLE agent_db_permissions_public.app_permission_defaults 
  DISABLE ROW LEVEL SECURITY;


