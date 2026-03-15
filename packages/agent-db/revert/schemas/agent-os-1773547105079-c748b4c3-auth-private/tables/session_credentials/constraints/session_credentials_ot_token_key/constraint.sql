-- Revert: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/constraints/session_credentials_ot_token_key/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".session_credentials 
  DROP CONSTRAINT session_credentials_ot_token_key;


