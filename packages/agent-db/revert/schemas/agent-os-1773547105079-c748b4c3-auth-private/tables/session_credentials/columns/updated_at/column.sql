-- Revert: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/columns/updated_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".session_credentials 
  DROP COLUMN updated_at RESTRICT;


