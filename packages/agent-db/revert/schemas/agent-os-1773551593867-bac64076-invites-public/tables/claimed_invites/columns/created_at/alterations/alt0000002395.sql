-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/claimed_invites/columns/created_at/alterations/alt0000002395


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".claimed_invites 
  ALTER COLUMN created_at DROP DEFAULT;


