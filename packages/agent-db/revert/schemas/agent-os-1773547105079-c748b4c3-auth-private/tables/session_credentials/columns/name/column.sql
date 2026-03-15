-- Revert: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/columns/name/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".session_credentials 
  DROP COLUMN name RESTRICT;


