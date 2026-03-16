-- Revert: schemas/agent_db_auth_private/tables/sessions/columns/created_at/alterations/alt0000001478


ALTER TABLE "agent_db_auth_private".sessions 
  ALTER COLUMN created_at DROP DEFAULT;


