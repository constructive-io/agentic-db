-- Revert: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/claimed_invites/columns/updated_at/alterations/alt0000000787


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".claimed_invites 
  ALTER COLUMN updated_at DROP DEFAULT;


