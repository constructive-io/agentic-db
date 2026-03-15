-- Verify: schemas/agent_db_app_public/tables/companies/indexes/companies_embedding_hnsw_idx


SELECT verify_index('agent_db_app_public.companies', 'companies_embedding_hnsw_idx');


