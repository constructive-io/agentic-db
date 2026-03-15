-- Revert: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/expires_at/alterations/alt0000002172




ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".sessions 
    ALTER COLUMN expires_at DROP DEFAULT;



