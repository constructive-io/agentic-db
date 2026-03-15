-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".invites 
  DROP COLUMN id RESTRICT;


