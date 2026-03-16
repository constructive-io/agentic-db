-- Verify: schemas/agent_db_app_public/tables/repositories/indexes/repositories_embedding_hnsw_idx


SELECT verify_index('agent_db_app_public.repositories', 'repositories_embedding_hnsw_idx');


