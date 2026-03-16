-- Revert: schemas/agent_db_auth_private/tables/sessions/columns/id/alterations/alt0000001456


ALTER TABLE "agent_db_auth_private".sessions 
  ALTER COLUMN id DROP NOT NULL;


