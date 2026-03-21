-- Verify: schemas/agentic_db_app_public/tables/templates/indexes/templates_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.templates', 'templates_embedding_hnsw_idx');


