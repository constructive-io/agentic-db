-- Revert: schemas/agent-os-1773551593867-bac64076-auth-private/tables/session_credentials/columns/ot_token/column


ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".session_credentials 
  DROP COLUMN ot_token RESTRICT;


