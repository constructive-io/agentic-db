-- Verify: schemas/agent_db_app_public/tables/tools/indexes/tools_embedding_hnsw_idx


SELECT verify_index('agent_db_app_public.tools', 'tools_embedding_hnsw_idx');


