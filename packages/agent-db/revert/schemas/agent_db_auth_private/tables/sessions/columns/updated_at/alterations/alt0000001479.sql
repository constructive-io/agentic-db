-- Revert: schemas/agent_db_auth_private/tables/sessions/columns/updated_at/alterations/alt0000001479


ALTER TABLE "agent_db_auth_private".sessions 
  ALTER COLUMN updated_at DROP DEFAULT;


