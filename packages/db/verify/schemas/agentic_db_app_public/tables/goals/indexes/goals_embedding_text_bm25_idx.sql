-- Verify: schemas/agentic_db_app_public/tables/goals/indexes/goals_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.goals', 'goals_embedding_text_bm25_idx');


