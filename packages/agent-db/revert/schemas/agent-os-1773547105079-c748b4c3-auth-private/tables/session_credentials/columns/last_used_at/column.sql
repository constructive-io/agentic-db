-- Revert: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/columns/last_used_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".session_credentials 
  DROP COLUMN last_used_at RESTRICT;


