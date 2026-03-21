-- Verify: schemas/agentic_db_app_public/tables/sessions/indexes/sessions_started_at_idx


SELECT verify_index('agentic_db_app_public.sessions', 'sessions_started_at_idx');


