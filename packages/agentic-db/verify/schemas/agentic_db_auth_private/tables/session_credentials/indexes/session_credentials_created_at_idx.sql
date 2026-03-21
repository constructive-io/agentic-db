-- Verify: schemas/agentic_db_auth_private/tables/session_credentials/indexes/session_credentials_created_at_idx


SELECT verify_index('agentic_db_auth_private.session_credentials', 'session_credentials_created_at_idx');


