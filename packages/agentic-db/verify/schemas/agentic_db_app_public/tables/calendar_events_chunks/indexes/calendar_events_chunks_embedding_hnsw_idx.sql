-- Verify: schemas/agentic_db_app_public/tables/calendar_events_chunks/indexes/calendar_events_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.calendar_events_chunks', 'calendar_events_chunks_embedding_hnsw_idx');


