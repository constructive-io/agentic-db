-- Verify: schemas/agent_db_app_public/tables/events/indexes/events_search_tsv_gin_idx


SELECT verify_index('agent_db_app_public.events', 'events_search_tsv_gin_idx');


