-- Revert: schemas/agent-os-1773551593867-bac64076-auth-private/tables/session_credentials/columns/session_id/alterations/alt0000002241


ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".session_credentials 
  ALTER COLUMN session_id DROP NOT NULL;


