-- Revert: schemas/agent_db_auth_private/tables/session_credentials/columns/updated_at/column


ALTER TABLE agent_db_auth_private.session_credentials 
  DROP COLUMN updated_at RESTRICT;


