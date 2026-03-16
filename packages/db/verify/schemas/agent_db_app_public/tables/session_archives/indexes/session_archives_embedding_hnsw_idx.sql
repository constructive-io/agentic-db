-- Verify: schemas/agent_db_app_public/tables/session_archives/indexes/session_archives_embedding_hnsw_idx


SELECT verify_index('agent_db_app_public.session_archives', 'session_archives_embedding_hnsw_idx');


