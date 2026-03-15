-- Revert: schemas/agent_db_auth_private/tables/sessions/columns/user_id/column


ALTER TABLE agent_db_auth_private.sessions 
  DROP COLUMN user_id RESTRICT;


