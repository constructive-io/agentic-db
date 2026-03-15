-- Revert: schemas/agent_db_auth_private/tables/session_credentials/columns/key_id/column


ALTER TABLE agent_db_auth_private.session_credentials 
  DROP COLUMN key_id RESTRICT;


