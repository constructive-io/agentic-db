-- Deploy: schemas/agentic_db_app_public/tables/events/triggers/events_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table


CREATE TRIGGER events_embedding_stale_update_tg
BEFORE UPDATE ON "agentic_db_app_public".events
FOR EACH ROW
WHEN (OLD.name IS DISTINCT FROM NEW.name OR OLD.notes_text IS DISTINCT FROM NEW.notes_text OR OLD.location IS DISTINCT FROM NEW.location)
EXECUTE PROCEDURE "agentic_db_private".events_embedding_stale ( );

