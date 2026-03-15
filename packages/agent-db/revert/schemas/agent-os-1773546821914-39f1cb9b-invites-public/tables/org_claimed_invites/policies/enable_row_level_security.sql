-- Revert: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_claimed_invites/policies/enable_row_level_security


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".org_claimed_invites 
  DISABLE ROW LEVEL SECURITY;


