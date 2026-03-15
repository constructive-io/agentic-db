-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/claimed_invites/columns/updated_at/alterations/alt0000002396


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".claimed_invites 
  ALTER COLUMN updated_at DROP DEFAULT;


