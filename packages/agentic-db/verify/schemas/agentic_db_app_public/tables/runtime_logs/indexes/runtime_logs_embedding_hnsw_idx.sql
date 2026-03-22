-- Verify: schemas/agentic_db_app_public/tables/runtime_logs/indexes/runtime_logs_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.runtime_logs', 'runtime_logs_embedding_hnsw_idx');


