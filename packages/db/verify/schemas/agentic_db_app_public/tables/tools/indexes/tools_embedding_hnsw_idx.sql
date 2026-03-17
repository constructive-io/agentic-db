-- Verify: schemas/agentic_db_app_public/tables/tools/indexes/tools_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.tools', 'tools_embedding_hnsw_idx');


