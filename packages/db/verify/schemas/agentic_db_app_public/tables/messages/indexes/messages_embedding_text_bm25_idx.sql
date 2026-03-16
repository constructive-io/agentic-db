-- Verify: schemas/agentic_db_app_public/tables/messages/indexes/messages_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.messages', 'messages_embedding_text_bm25_idx');


