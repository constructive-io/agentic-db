-- Deploy: schemas/agentic_db_app_public/tables/event_links/triggers/event_links_embedding_auto_updated_at_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/event_links/table
-- requires: schemas/agentic_db_app_private/trigger_fns/event_links_embedding_auto_updated_at


CREATE TRIGGER event_links_embedding_auto_updated_at_tg
BEFORE UPDATE ON agentic_db_app_public.event_links
FOR EACH ROW
WHEN (OLD.embedding IS DISTINCT FROM NEW.embedding)
EXECUTE PROCEDURE agentic_db_app_private.event_links_embedding_auto_updated_at ( );

