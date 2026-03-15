-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/session_credentials/columns/updated_at/alterations/alt0000000647


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-auth-private".session_credentials 
  ALTER COLUMN updated_at DROP DEFAULT;


