-- Deploy: schemas/agentic_db_app_public/tables/notes/triggers/notes_enqueue_chunking_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_private/trigger_fns/notes_enqueue_chunking
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


CREATE TRIGGER notes_enqueue_chunking_update_tg
AFTER UPDATE ON agentic_db_app_public.notes
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".notes_enqueue_chunking ( );

