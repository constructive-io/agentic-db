-- Revert: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/claimed_invites/columns/created_at/alterations/alt0000000786


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".claimed_invites 
  ALTER COLUMN created_at DROP DEFAULT;


