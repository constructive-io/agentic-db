-- Verify: schemas/agentic_db_app_public/tables/images/indexes/images_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.images', 'images_embedding_hnsw_idx');


