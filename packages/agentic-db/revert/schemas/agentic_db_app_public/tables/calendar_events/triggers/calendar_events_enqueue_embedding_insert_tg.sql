-- Revert: schemas/agentic_db_app_public/tables/calendar_events/triggers/calendar_events_enqueue_embedding_insert_tg


DROP TRIGGER calendar_events_enqueue_embedding_insert_tg ON "agentic_db_app_public".calendar_events;


