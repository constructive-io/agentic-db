-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_claimed_invites/columns/created_at/alterations/alt0000002435


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".org_claimed_invites 
  ALTER COLUMN created_at DROP DEFAULT;


