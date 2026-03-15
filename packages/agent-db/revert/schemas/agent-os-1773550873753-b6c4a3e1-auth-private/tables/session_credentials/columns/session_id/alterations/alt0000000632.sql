-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/session_credentials/columns/session_id/alterations/alt0000000632


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-auth-private".session_credentials 
  ALTER COLUMN session_id DROP NOT NULL;


