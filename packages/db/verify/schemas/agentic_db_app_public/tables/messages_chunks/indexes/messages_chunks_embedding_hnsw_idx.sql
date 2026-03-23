-- Verify: schemas/agentic_db_app_public/tables/messages_chunks/indexes/messages_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.messages_chunks', 'messages_chunks_embedding_hnsw_idx');


