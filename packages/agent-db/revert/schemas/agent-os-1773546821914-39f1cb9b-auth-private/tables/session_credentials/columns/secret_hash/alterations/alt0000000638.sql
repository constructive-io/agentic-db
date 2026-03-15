-- Revert: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/session_credentials/columns/secret_hash/alterations/alt0000000638


ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".session_credentials 
  ALTER COLUMN secret_hash DROP NOT NULL;


