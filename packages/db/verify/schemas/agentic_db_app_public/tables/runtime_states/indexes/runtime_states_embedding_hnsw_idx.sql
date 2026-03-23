-- Verify: schemas/agentic_db_app_public/tables/runtime_states/indexes/runtime_states_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.runtime_states', 'runtime_states_embedding_hnsw_idx');


