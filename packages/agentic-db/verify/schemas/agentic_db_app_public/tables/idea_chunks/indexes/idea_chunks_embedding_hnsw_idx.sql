-- Verify: schemas/agentic_db_app_public/tables/idea_chunks/indexes/idea_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.idea_chunks', 'idea_chunks_embedding_hnsw_idx');


