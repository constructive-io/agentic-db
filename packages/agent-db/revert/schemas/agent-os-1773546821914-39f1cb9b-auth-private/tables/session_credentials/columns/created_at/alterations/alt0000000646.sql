-- Revert: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/session_credentials/columns/created_at/alterations/alt0000000646


ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".session_credentials 
  ALTER COLUMN created_at DROP DEFAULT;


