-- Revert: schemas/agentic_db_app_public/tables/events/triggers/events_enqueue_embedding_update_tg


DROP TRIGGER events_enqueue_embedding_update_tg ON "agentic_db_app_public".events;


