-- Verify: schemas/agentic_db_app_public/tables/sessions/indexes/sessions_agent_id_idx


SELECT verify_index('agentic_db_app_public.sessions', 'sessions_agent_id_idx');


