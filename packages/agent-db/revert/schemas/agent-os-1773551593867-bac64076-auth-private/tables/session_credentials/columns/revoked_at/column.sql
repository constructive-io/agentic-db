-- Revert: schemas/agent-os-1773551593867-bac64076-auth-private/tables/session_credentials/columns/revoked_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".session_credentials 
  DROP COLUMN revoked_at RESTRICT;


