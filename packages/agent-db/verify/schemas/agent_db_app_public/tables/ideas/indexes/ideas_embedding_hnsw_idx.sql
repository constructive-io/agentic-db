-- Verify: schemas/agent_db_app_public/tables/ideas/indexes/ideas_embedding_hnsw_idx


SELECT verify_index('agent_db_app_public.ideas', 'ideas_embedding_hnsw_idx');


