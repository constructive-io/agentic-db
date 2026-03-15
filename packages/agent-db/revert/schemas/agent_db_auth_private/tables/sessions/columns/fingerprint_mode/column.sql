-- Revert: schemas/agent_db_auth_private/tables/sessions/columns/fingerprint_mode/column


ALTER TABLE "agent_db_auth_private".sessions 
  DROP COLUMN fingerprint_mode RESTRICT;


