-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/claimed_invites/columns/id/alterations/alt0000002390


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".claimed_invites 
  ALTER COLUMN id DROP NOT NULL;


