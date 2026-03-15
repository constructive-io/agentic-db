-- Verify: schemas/agent_db_app_public/tables/rules/indexes/rules_embedding_hnsw_idx


SELECT verify_index('agent_db_app_public.rules', 'rules_embedding_hnsw_idx');


