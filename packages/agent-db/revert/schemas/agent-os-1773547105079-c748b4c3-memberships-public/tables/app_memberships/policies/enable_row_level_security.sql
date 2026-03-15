-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_memberships/policies/enable_row_level_security


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".app_memberships 
  DISABLE ROW LEVEL SECURITY;


