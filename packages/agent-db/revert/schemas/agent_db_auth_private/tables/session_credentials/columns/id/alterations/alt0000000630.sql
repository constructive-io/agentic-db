-- Revert: schemas/agent_db_auth_private/tables/session_credentials/columns/id/alterations/alt0000000630


ALTER TABLE agent_db_auth_private.session_credentials 
  ALTER COLUMN id DROP NOT NULL;


