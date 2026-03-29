-- Verify: schemas/agentic_db_app_public/tables/runtime_states_chunks/indexes/runtime_states_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.runtime_states_chunks', 'runtime_states_chunks_embedding_hnsw_idx');


