-- Verify: schemas/agent_db_app_public/tables/sessions/indexes/sessions_compression_count_idx


SELECT verify_index('agent_db_app_public.sessions', 'sessions_compression_count_idx');


