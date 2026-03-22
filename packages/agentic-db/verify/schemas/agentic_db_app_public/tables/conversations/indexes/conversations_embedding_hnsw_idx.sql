-- Verify: schemas/agentic_db_app_public/tables/conversations/indexes/conversations_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.conversations', 'conversations_embedding_hnsw_idx');


