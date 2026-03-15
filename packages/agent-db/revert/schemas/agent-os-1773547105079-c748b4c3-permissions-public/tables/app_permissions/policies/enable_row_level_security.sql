-- Revert: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/app_permissions/policies/enable_row_level_security


ALTER TABLE "agent-os-1773547105079-c748b4c3-permissions-public".app_permissions 
  DISABLE ROW LEVEL SECURITY;


