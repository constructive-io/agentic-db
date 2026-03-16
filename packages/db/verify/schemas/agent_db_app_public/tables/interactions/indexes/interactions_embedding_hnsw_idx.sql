-- Verify: schemas/agent_db_app_public/tables/interactions/indexes/interactions_embedding_hnsw_idx


SELECT verify_index('agent_db_app_public.interactions', 'interactions_embedding_hnsw_idx');


