-- Verify: schemas/agentic_db_app_public/tables/runtime_events/indexes/runtime_events_entity_id_idx


SELECT verify_index('agentic_db_app_public.runtime_events', 'runtime_events_entity_id_idx');


