-- Revert: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/session_credentials/columns/ot_token/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".session_credentials 
  DROP COLUMN ot_token RESTRICT;


