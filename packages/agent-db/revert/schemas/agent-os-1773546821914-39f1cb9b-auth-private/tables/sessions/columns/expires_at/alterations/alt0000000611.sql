-- Revert: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/columns/expires_at/alterations/alt0000000611




ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".sessions 
    ALTER COLUMN expires_at DROP DEFAULT;



