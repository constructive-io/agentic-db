-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/columns/expires_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".invites 
  DROP COLUMN expires_at RESTRICT;


