-- Verify: schemas/agentic_db_auth_private/tables/sessions/indexes/sessions_user_id_idx


SELECT verify_index('agentic_db_auth_private.sessions', 'sessions_user_id_idx');


