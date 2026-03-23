-- Verify: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.autonomy_records', 'autonomy_records_embedding_hnsw_idx');


