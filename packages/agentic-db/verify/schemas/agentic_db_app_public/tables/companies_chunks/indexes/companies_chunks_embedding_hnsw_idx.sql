-- Verify: schemas/agentic_db_app_public/tables/companies_chunks/indexes/companies_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.companies_chunks', 'companies_chunks_embedding_hnsw_idx');


