-- Verify: schemas/agentic_db_app_public/tables/sessions/indexes/sessions_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.sessions', 'sessions_embedding_hnsw_idx');


