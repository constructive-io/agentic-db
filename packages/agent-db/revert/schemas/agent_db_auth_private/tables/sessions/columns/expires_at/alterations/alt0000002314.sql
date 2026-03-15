-- Revert: schemas/agent_db_auth_private/tables/sessions/columns/expires_at/alterations/alt0000002314


ALTER TABLE "agent_db_auth_private".sessions 
  ALTER COLUMN expires_at DROP NOT NULL;


