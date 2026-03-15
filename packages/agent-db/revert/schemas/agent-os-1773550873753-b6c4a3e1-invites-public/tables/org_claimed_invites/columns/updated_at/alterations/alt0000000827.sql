-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_claimed_invites/columns/updated_at/alterations/alt0000000827


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-invites-public".org_claimed_invites 
  ALTER COLUMN updated_at DROP DEFAULT;


