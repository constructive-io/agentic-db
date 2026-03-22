-- Verify: schemas/agentic_db_app_public/tables/conversations/indexes/conversations_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.conversations', 'conversations_embedding_text_bm25_idx');


