-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/columns/created_at/alterations/alt0000002386


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".invites 
  ALTER COLUMN created_at DROP DEFAULT;


