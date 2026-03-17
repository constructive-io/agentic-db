-- Verify: schemas/agentic_db_app_public/tables/messages/indexes/messages_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.messages', 'messages_embedding_hnsw_idx');


