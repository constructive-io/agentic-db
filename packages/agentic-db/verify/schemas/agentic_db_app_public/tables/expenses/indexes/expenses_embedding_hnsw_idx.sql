-- Verify: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.expenses', 'expenses_embedding_hnsw_idx');


