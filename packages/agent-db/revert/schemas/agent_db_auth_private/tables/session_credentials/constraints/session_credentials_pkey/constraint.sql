-- Revert: schemas/agent_db_auth_private/tables/session_credentials/constraints/session_credentials_pkey/constraint


ALTER TABLE agent_db_auth_private.session_credentials 
  DROP CONSTRAINT session_credentials_pkey;


