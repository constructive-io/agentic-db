-- Verify: schemas/agentic_db_app_public/tables/reminder_chunks/indexes/reminder_chunks_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.reminder_chunks', 'reminder_chunks_embedding_text_bm25_idx');


