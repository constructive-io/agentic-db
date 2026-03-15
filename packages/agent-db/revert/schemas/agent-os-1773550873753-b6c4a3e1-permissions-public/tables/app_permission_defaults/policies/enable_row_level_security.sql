-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/app_permission_defaults/policies/enable_row_level_security


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-permissions-public".app_permission_defaults 
  DISABLE ROW LEVEL SECURITY;


