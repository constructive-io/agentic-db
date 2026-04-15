-- Deploy: schemas/agentic_db_app_public/tables/notes/triggers/notes_enqueue_embedding_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table


CREATE TRIGGER notes_enqueue_embedding_update_tg
AFTER UPDATE ON "agentic_db_app_public".notes
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE "agentic_db_private".notes_enqueue_embedding ( );

