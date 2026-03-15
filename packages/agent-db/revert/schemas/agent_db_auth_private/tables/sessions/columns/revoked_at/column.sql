-- Revert: schemas/agent_db_auth_private/tables/sessions/columns/revoked_at/column


ALTER TABLE agent_db_auth_private.sessions 
  DROP COLUMN revoked_at RESTRICT;


