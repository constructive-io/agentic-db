-- Verify: schemas/agentic_db_app_public/tables/template_chunks/indexes/template_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.template_chunks', 'template_chunks_embedding_hnsw_idx');


