-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/claimed_invites/columns/data/column


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".claimed_invites 
  DROP COLUMN data RESTRICT;


