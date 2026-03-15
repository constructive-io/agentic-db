-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_claimed_invites/policies/enable_row_level_security


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".org_claimed_invites 
  DISABLE ROW LEVEL SECURITY;


