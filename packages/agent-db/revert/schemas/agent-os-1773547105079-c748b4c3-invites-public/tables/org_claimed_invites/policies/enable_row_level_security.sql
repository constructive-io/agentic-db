-- Revert: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_claimed_invites/policies/enable_row_level_security


ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".org_claimed_invites 
  DISABLE ROW LEVEL SECURITY;


