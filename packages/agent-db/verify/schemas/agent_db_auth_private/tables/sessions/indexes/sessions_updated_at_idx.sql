-- Verify: schemas/agent_db_auth_private/tables/sessions/indexes/sessions_updated_at_idx


SELECT verify_index('agent_db_auth_private.sessions', 'sessions_updated_at_idx');


