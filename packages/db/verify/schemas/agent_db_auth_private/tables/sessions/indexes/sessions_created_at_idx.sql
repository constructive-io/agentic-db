-- Verify: schemas/agent_db_auth_private/tables/sessions/indexes/sessions_created_at_idx


SELECT verify_index('agent_db_auth_private.sessions', 'sessions_created_at_idx');


