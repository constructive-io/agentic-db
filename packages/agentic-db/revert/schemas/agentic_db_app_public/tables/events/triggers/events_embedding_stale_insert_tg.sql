-- Revert: schemas/agentic_db_app_public/tables/events/triggers/events_embedding_stale_insert_tg


DROP TRIGGER events_embedding_stale_insert_tg ON agentic_db_app_public.events;


