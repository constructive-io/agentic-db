-- Revert: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/columns/session_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".session_credentials 
  DROP COLUMN session_id RESTRICT;


