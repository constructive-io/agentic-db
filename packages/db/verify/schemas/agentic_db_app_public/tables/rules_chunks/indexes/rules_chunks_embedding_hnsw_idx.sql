-- Verify: schemas/agentic_db_app_public/tables/rules_chunks/indexes/rules_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.rules_chunks', 'rules_chunks_embedding_hnsw_idx');


