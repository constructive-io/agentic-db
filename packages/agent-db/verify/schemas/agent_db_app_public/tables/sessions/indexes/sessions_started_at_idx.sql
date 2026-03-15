-- Verify: schemas/agent_db_app_public/tables/sessions/indexes/sessions_started_at_idx


SELECT verify_index('agent_db_app_public.sessions', 'sessions_started_at_idx');


