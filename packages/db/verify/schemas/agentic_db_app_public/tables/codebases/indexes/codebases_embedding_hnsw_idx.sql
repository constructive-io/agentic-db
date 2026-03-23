-- Verify: schemas/agentic_db_app_public/tables/codebases/indexes/codebases_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.codebases', 'codebases_embedding_hnsw_idx');


