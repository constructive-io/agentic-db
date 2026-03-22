-- Deploy: schemas/agentic_db_app_public/tables/note_chunks/triggers/note_chunks_enqueue_embedding_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/note_chunks/table
-- requires: schemas/agentic_db_private/trigger_fns/note_chunks_enqueue_embedding
-- requires: schemas/agentic_db_app_public/tables/note_chunks/columns/embedding_text/column


CREATE TRIGGER note_chunks_enqueue_embedding_insert_tg
AFTER INSERT ON agentic_db_app_public.note_chunks
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE agentic_db_private.note_chunks_enqueue_embedding ( );

