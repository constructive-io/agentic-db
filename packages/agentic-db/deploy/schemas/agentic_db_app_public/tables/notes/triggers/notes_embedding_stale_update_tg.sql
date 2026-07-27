-- Deploy: schemas/agentic_db_app_public/tables/notes/triggers/notes_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_private/trigger_fns/notes_embedding_stale


CREATE TRIGGER notes_embedding_stale_update_tg
BEFORE UPDATE ON agentic_db_app_public.notes
FOR EACH ROW
WHEN (OLD.content IS DISTINCT FROM NEW.content OR OLD.abstract IS DISTINCT FROM NEW.abstract)
EXECUTE PROCEDURE agentic_db_app_private.notes_embedding_stale ( );

