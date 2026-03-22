-- Deploy: schemas/agentic_db_app_public/tables/memory_chunks/triggers/memory_chunks_enqueue_embedding_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memory_chunks/table
-- requires: schemas/agentic_db_private/trigger_fns/memory_chunks_enqueue_embedding
-- requires: schemas/agentic_db_app_public/tables/memory_chunks/columns/embedding_text/column


CREATE TRIGGER memory_chunks_enqueue_embedding_insert_tg
AFTER INSERT ON "agentic_db_app_public".memory_chunks
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE "agentic_db_private".memory_chunks_enqueue_embedding ( );

