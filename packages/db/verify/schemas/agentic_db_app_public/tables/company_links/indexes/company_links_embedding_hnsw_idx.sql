-- Verify: schemas/agentic_db_app_public/tables/company_links/indexes/company_links_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.company_links', 'company_links_embedding_hnsw_idx');


