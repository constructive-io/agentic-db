-- Revert: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/expires_at/alterations/alt0000002220




ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".sessions 
    ALTER COLUMN expires_at DROP DEFAULT;



