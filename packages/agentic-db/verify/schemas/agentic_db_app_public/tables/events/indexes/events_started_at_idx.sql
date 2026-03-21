-- Verify: schemas/agentic_db_app_public/tables/events/indexes/events_started_at_idx


SELECT verify_index('agentic_db_app_public.events', 'events_started_at_idx');


