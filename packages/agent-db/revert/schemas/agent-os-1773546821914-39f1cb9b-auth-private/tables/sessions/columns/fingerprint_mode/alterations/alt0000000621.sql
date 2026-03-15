-- Revert: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/columns/fingerprint_mode/alterations/alt0000000621




ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".sessions 
    ALTER COLUMN fingerprint_mode DROP DEFAULT;



