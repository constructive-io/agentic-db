-- Verify: schemas/agentic_db_app_public/tables/blueprint_chunks/indexes/blueprint_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.blueprint_chunks', 'blueprint_chunks_embedding_hnsw_idx');


