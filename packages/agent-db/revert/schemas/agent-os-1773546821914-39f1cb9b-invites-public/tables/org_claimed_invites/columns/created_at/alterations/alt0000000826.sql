-- Revert: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_claimed_invites/columns/created_at/alterations/alt0000000826


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".org_claimed_invites 
  ALTER COLUMN created_at DROP DEFAULT;


