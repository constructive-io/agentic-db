-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/sessions/columns/expires_at/alterations/alt0000000611




ALTER TABLE "agent-os-1773550873753-b6c4a3e1-auth-private".sessions 
    ALTER COLUMN expires_at DROP DEFAULT;



