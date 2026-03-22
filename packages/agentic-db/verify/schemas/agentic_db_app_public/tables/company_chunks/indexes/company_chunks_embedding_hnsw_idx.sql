-- Verify: schemas/agentic_db_app_public/tables/company_chunks/indexes/company_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.company_chunks', 'company_chunks_embedding_hnsw_idx');


