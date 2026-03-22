-- Verify: schemas/agentic_db_app_public/tables/habit_chunks/indexes/habit_chunks_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.habit_chunks', 'habit_chunks_embedding_text_bm25_idx');


