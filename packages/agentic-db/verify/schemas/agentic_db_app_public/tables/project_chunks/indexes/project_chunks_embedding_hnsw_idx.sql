-- Verify: schemas/agentic_db_app_public/tables/project_chunks/indexes/project_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.project_chunks', 'project_chunks_embedding_hnsw_idx');


