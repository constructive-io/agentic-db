-- Verify: schemas/agent_db_app_public/tables/sessions/indexes/sessions_embedding_text_bm25_idx


SELECT verify_index('agent_db_app_public.sessions', 'sessions_embedding_text_bm25_idx');


