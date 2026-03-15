-- Revert: schemas/agent-os-1773551593867-bac64076-auth-private/tables/session_credentials/columns/updated_at/alterations/alt0000002256


ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".session_credentials 
  ALTER COLUMN updated_at DROP DEFAULT;


