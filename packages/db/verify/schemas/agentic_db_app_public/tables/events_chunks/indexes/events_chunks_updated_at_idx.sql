-- Verify: schemas/agentic_db_app_public/tables/events_chunks/indexes/events_chunks_updated_at_idx


SELECT verify_index('agentic_db_app_public.events_chunks', 'events_chunks_updated_at_idx');


