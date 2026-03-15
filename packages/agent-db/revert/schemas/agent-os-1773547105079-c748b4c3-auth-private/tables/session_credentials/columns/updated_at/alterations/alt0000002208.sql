-- Revert: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/columns/updated_at/alterations/alt0000002208


ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".session_credentials 
  ALTER COLUMN updated_at DROP DEFAULT;


