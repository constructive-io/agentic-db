-- Revert: schemas/agent_db_auth_private/tables/sessions/columns/fingerprint_mode/alterations/alt0000003838


ALTER TABLE "agent_db_auth_private".sessions 
  ALTER COLUMN fingerprint_mode DROP NOT NULL;


