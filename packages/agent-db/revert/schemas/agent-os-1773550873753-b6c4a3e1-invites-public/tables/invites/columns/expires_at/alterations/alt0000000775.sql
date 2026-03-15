-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/columns/expires_at/alterations/alt0000000775




ALTER TABLE "agent-os-1773550873753-b6c4a3e1-invites-public".invites 
    ALTER COLUMN expires_at DROP DEFAULT;



