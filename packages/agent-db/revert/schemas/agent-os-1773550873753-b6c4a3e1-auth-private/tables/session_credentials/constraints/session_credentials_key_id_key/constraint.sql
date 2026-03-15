-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/session_credentials/constraints/session_credentials_key_id_key/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-auth-private".session_credentials 
  DROP CONSTRAINT session_credentials_key_id_key;


