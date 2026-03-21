-- Verify: schemas/agentic_db_app_public/tables/interactions/indexes/interactions_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.interactions', 'interactions_embedding_hnsw_idx');


