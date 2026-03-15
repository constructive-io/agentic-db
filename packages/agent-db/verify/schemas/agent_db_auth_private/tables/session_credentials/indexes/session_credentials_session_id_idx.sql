-- Verify: schemas/agent_db_auth_private/tables/session_credentials/indexes/session_credentials_session_id_idx


SELECT verify_index('agent_db_auth_private.session_credentials', 'session_credentials_session_id_idx');


