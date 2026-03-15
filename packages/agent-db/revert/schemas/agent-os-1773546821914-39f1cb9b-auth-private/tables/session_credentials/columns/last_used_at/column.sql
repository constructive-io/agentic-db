-- Revert: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/session_credentials/columns/last_used_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".session_credentials 
  DROP COLUMN last_used_at RESTRICT;


