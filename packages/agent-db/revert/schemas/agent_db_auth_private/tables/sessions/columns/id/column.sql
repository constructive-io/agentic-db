-- Revert: schemas/agent_db_auth_private/tables/sessions/columns/id/column


ALTER TABLE agent_db_auth_private.sessions 
  DROP COLUMN id RESTRICT;


