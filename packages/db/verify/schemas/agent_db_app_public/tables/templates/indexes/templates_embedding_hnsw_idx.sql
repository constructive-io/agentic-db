-- Verify: schemas/agent_db_app_public/tables/templates/indexes/templates_embedding_hnsw_idx


SELECT verify_index('agent_db_app_public.templates', 'templates_embedding_hnsw_idx');


