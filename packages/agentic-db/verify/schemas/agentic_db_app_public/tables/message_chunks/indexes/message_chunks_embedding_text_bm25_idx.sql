-- Verify: schemas/agentic_db_app_public/tables/message_chunks/indexes/message_chunks_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.message_chunks', 'message_chunks_embedding_text_bm25_idx');


