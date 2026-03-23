-- Verify: schemas/agentic_db_app_public/tables/goals_chunks/indexes/goals_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.goals_chunks', 'goals_chunks_embedding_hnsw_idx');


