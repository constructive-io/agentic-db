-- Deploy: schemas/agentic_db_app_public/tables/notes/triggers/notes_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_private/trigger_fns/notes_embedding_stale
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


CREATE TRIGGER notes_embedding_stale_insert_tg
BEFORE INSERT ON agentic_db_app_public.notes
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_private.notes_embedding_stale ( );

