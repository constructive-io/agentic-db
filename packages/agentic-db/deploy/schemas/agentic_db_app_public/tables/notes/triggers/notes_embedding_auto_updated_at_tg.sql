-- Deploy: schemas/agentic_db_app_public/tables/notes/triggers/notes_embedding_auto_updated_at_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_private/trigger_fns/notes_embedding_auto_updated_at


CREATE TRIGGER notes_embedding_auto_updated_at_tg
BEFORE UPDATE ON agentic_db_app_public.notes
FOR EACH ROW
WHEN (OLD.embedding IS DISTINCT FROM NEW.embedding)
EXECUTE PROCEDURE agentic_db_app_private.notes_embedding_auto_updated_at ( );

