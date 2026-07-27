-- Deploy: schemas/agentic_db_app_public/tables/notes/triggers/notes_enqueue_chunking_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_private/trigger_fns/notes_enqueue_chunking


CREATE TRIGGER notes_enqueue_chunking_insert_tg
AFTER INSERT ON agentic_db_app_public.notes
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_app_private.notes_enqueue_chunking ( );

