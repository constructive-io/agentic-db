-- Verify: schemas/agentic_db_auth_private/tables/sessions/indexes/sessions_updated_at_idx


SELECT verify_index('agentic_db_auth_private.sessions', 'sessions_updated_at_idx');


