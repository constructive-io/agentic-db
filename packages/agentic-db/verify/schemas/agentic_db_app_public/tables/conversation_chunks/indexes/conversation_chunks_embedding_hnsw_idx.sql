-- Verify: schemas/agentic_db_app_public/tables/conversation_chunks/indexes/conversation_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.conversation_chunks', 'conversation_chunks_embedding_hnsw_idx');


