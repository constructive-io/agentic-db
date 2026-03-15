-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/columns/updated_at/alterations/alt0000002387


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".invites 
  ALTER COLUMN updated_at DROP DEFAULT;


