-- Deploy: schemas/agentic_db_app_public/tables/events/triggers/events_enqueue_embedding_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table


CREATE TRIGGER events_enqueue_embedding_insert_tg
AFTER INSERT ON "agentic_db_app_public".events
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE "agentic_db_private".events_enqueue_embedding ( );

