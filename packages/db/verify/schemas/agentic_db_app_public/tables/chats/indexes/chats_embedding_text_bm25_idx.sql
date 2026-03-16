-- Verify: schemas/agentic_db_app_public/tables/chats/indexes/chats_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.chats', 'chats_embedding_text_bm25_idx');


