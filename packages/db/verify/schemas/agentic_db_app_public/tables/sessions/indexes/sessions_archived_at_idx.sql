-- Verify: schemas/agentic_db_app_public/tables/sessions/indexes/sessions_archived_at_idx


SELECT verify_index('agentic_db_app_public.sessions', 'sessions_archived_at_idx');


