-- Verify: schemas/agentic_db_app_public/tables/chat_messages/indexes/chat_messages_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.chat_messages', 'chat_messages_embedding_hnsw_idx');


