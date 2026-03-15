-- Verify: schemas/agent_db_app_public/tables/events/indexes/events_embedding_text_bm25_idx


SELECT verify_index('agent_db_app_public.events', 'events_embedding_text_bm25_idx');


