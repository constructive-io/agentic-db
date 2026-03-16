-- Revert: schemas/agent_db_auth_private/tables/sessions/columns/last_mfa_verified/column


ALTER TABLE "agent_db_auth_private".sessions 
  DROP COLUMN last_mfa_verified RESTRICT;


