-- Verify: schemas/agentic_db_app_public/tables/goals/indexes/goals_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.goals', 'goals_embedding_hnsw_idx');


