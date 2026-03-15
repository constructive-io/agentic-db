-- Revert: schemas/agent-os-1773551593867-bac64076-auth-private/tables/session_credentials/columns/kind/alterations/alt0000002243


ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".session_credentials 
  ALTER COLUMN kind DROP NOT NULL;


