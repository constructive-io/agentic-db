-- Deploy: schemas/agentic_db_app_public/tables/calendar_events/triggers/calendar_events_embedding_auto_updated_at_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table
-- requires: schemas/agentic_db_app_private/trigger_fns/calendar_events_embedding_auto_updated_at


CREATE TRIGGER calendar_events_embedding_auto_updated_at_tg
BEFORE UPDATE ON agentic_db_app_public.calendar_events
FOR EACH ROW
WHEN (OLD.embedding IS DISTINCT FROM NEW.embedding)
EXECUTE PROCEDURE agentic_db_app_private.calendar_events_embedding_auto_updated_at ( );

