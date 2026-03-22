-- Verify: schemas/agentic_db_app_public/tables/habits/indexes/habits_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.habits', 'habits_embedding_text_bm25_idx');


