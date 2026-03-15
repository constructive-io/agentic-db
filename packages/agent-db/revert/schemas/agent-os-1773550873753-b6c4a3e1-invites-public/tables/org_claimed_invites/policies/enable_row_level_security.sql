-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_claimed_invites/policies/enable_row_level_security


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-invites-public".org_claimed_invites 
  DISABLE ROW LEVEL SECURITY;


