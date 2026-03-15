-- Revert: schemas/agent_db_auth_private/tables/session_credentials/triggers/timestamps_tg


DROP TRIGGER timestamps_tg ON agent_db_auth_private.session_credentials;


