-- Verify: schemas/agentic_db_app_public/tables/list_chunks/indexes/list_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.list_chunks', 'list_chunks_embedding_hnsw_idx');


