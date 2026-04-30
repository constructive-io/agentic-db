-- Deploy: schemas/agentic_db_app_public/tables/calendar_events/triggers/calendar_events_enqueue_embedding_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx
-- requires: schemas/agentic_db_private/trigger_fns/calendar_events_enqueue_embedding


CREATE TRIGGER calendar_events_enqueue_embedding_update_tg
AFTER UPDATE ON agentic_db_app_public.calendar_events
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE "agentic_db_private".calendar_events_enqueue_embedding ( );

