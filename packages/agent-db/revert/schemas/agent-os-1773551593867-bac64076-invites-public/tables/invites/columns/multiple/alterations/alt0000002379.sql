-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/columns/multiple/alterations/alt0000002379


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".invites 
  ALTER COLUMN multiple DROP NOT NULL;


