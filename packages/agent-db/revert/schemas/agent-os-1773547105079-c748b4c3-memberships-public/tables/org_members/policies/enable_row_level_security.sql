-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_members/policies/enable_row_level_security


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_members 
  DISABLE ROW LEVEL SECURITY;


