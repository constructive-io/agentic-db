-- Verify: schemas/agentic_db_app_public/tables/reminders/indexes/reminders_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.reminders', 'reminders_embedding_text_bm25_idx');


