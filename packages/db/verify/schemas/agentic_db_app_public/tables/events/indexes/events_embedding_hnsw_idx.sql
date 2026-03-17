-- Verify: schemas/agentic_db_app_public/tables/events/indexes/events_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.events', 'events_embedding_hnsw_idx');


