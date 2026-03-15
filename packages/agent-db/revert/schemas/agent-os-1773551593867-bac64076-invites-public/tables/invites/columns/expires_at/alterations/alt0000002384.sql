-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/columns/expires_at/alterations/alt0000002384




ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".invites 
    ALTER COLUMN expires_at DROP DEFAULT;



