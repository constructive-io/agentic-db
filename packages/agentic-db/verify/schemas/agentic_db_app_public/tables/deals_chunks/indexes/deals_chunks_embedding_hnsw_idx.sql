-- Verify: schemas/agentic_db_app_public/tables/deals_chunks/indexes/deals_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.deals_chunks', 'deals_chunks_embedding_hnsw_idx');


