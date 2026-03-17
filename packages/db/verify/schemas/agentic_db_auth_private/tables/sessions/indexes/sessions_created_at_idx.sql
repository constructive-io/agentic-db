-- Verify: schemas/agentic_db_auth_private/tables/sessions/indexes/sessions_created_at_idx


SELECT verify_index('agentic_db_auth_private.sessions', 'sessions_created_at_idx');


