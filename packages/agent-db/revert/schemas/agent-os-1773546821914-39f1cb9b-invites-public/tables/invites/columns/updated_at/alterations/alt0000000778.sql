-- Revert: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/columns/updated_at/alterations/alt0000000778


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".invites 
  ALTER COLUMN updated_at DROP DEFAULT;


