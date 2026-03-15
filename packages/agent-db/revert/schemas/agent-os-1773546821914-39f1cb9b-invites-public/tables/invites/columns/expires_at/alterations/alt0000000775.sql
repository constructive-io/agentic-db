-- Revert: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/columns/expires_at/alterations/alt0000000775




ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".invites 
    ALTER COLUMN expires_at DROP DEFAULT;



