-- Revert: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/session_credentials/constraints/session_credentials_secret_hash_key/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".session_credentials 
  DROP CONSTRAINT session_credentials_secret_hash_key;


