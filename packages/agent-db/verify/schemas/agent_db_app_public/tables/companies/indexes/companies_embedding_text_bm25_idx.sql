-- Verify: schemas/agent_db_app_public/tables/companies/indexes/companies_embedding_text_bm25_idx


SELECT verify_index('agent_db_app_public.companies', 'companies_embedding_text_bm25_idx');


