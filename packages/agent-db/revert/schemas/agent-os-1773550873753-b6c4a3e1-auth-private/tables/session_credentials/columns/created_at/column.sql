-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/session_credentials/columns/created_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-auth-private".session_credentials 
  DROP COLUMN created_at RESTRICT;


