-- Verify: schemas/agentic_db_app_public/tables/events/indexes/events_name_gin_idx


SELECT verify_index('agentic_db_app_public.events', 'events_name_gin_idx');


