-- Deploy: schemas/agentic_db_app_public/tables/venue_chunks/triggers/venue_chunks_enqueue_embedding_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_chunks/table
-- requires: schemas/agentic_db_private/trigger_fns/venue_chunks_enqueue_embedding
-- requires: schemas/agentic_db_app_public/tables/venue_chunks/columns/embedding_text/column


CREATE TRIGGER venue_chunks_enqueue_embedding_insert_tg
AFTER INSERT ON agentic_db_app_public.venue_chunks
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE agentic_db_private.venue_chunks_enqueue_embedding ( );

