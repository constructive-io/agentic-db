-- Revert: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/fingerprint_mode/alterations/alt0000002181


ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".sessions 
  ALTER COLUMN fingerprint_mode DROP NOT NULL;


