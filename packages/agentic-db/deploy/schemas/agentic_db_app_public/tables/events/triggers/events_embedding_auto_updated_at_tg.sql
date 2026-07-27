-- Deploy: schemas/agentic_db_app_public/tables/events/triggers/events_embedding_auto_updated_at_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/events/table
-- requires: schemas/agentic_db_app_private/trigger_fns/events_embedding_auto_updated_at


CREATE TRIGGER events_embedding_auto_updated_at_tg
BEFORE UPDATE ON agentic_db_app_public.events
FOR EACH ROW
WHEN (OLD.embedding IS DISTINCT FROM NEW.embedding)
EXECUTE PROCEDURE agentic_db_app_private.events_embedding_auto_updated_at ( );

