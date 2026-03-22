-- Verify: schemas/agentic_db_app_public/tables/goal_chunks/indexes/goal_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.goal_chunks', 'goal_chunks_embedding_hnsw_idx');


