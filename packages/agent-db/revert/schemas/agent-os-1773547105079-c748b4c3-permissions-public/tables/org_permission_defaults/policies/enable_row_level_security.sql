-- Revert: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/org_permission_defaults/policies/enable_row_level_security


ALTER TABLE "agent-os-1773547105079-c748b4c3-permissions-public".org_permission_defaults 
  DISABLE ROW LEVEL SECURITY;


