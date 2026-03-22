-- Verify: schemas/agentic_db_app_public/tables/deals/indexes/deals_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.deals', 'deals_embedding_hnsw_idx');


