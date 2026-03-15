-- Verify: schemas/agent_db_app_public/tables/calendar_events/indexes/calendar_events_embedding_text_bm25_idx


SELECT verify_index('agent_db_app_public.calendar_events', 'calendar_events_embedding_text_bm25_idx');


