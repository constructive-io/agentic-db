-- Verify: schemas/agentic_db_app_public/tables/ideas/indexes/ideas_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.ideas', 'ideas_embedding_hnsw_idx');


