-- Revert: schemas/agent-os-1773551593867-bac64076-auth-private/tables/session_credentials/columns/id/alterations/alt0000002239


ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".session_credentials 
  ALTER COLUMN id DROP NOT NULL;


