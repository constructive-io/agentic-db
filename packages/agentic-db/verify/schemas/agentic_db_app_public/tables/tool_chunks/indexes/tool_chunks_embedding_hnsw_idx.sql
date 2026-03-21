-- Verify: schemas/agentic_db_app_public/tables/tool_chunks/indexes/tool_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.tool_chunks', 'tool_chunks_embedding_hnsw_idx');


