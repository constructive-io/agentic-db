-- Verify: schemas/agentic_db_app_public/tables/event_chunks/indexes/event_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.event_chunks', 'event_chunks_embedding_hnsw_idx');


