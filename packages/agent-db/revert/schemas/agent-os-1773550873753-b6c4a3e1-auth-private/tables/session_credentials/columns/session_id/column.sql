-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/session_credentials/columns/session_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-auth-private".session_credentials 
  DROP COLUMN session_id RESTRICT;


