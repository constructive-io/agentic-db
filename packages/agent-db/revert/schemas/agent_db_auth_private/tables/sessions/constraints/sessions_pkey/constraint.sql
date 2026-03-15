-- Revert: schemas/agent_db_auth_private/tables/sessions/constraints/sessions_pkey/constraint


ALTER TABLE agent_db_auth_private.sessions 
  DROP CONSTRAINT sessions_pkey;


