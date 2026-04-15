-- Deploy: schemas/agentic_db_app_public/tables/code_chunks/triggers/code_chunks_enqueue_embedding_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/code_chunks/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


CREATE TRIGGER code_chunks_enqueue_embedding_update_tg
AFTER UPDATE ON "agentic_db_app_public".code_chunks
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE "agentic_db_private".code_chunks_enqueue_embedding ( );

