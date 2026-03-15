-- Revert: schemas/agent_db_auth_private/tables/sessions/columns/created_at/alterations/alt0000003796


ALTER TABLE "agent_db_auth_private".sessions 
  ALTER COLUMN created_at DROP DEFAULT;


