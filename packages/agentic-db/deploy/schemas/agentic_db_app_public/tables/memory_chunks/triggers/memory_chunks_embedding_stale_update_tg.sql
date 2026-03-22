-- Deploy: schemas/agentic_db_app_public/tables/memory_chunks/triggers/memory_chunks_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memory_chunks/table
-- requires: schemas/agentic_db_private/trigger_fns/memory_chunks_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE TRIGGER memory_chunks_embedding_stale_update_tg
BEFORE UPDATE ON "agentic_db_app_public".memory_chunks
FOR EACH ROW
WHEN (OLD.embedding_text IS DISTINCT FROM NEW.embedding_text)
EXECUTE PROCEDURE "agentic_db_private".memory_chunks_embedding_stale ( );

