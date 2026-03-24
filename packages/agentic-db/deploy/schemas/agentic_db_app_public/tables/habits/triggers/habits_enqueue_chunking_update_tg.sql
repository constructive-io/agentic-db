-- Deploy: schemas/agentic_db_app_public/tables/habits/triggers/habits_enqueue_chunking_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_private/trigger_fns/habits_enqueue_chunking
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE TRIGGER habits_enqueue_chunking_update_tg
AFTER UPDATE ON agentic_db_app_public.habits
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_private.habits_enqueue_chunking ( );

