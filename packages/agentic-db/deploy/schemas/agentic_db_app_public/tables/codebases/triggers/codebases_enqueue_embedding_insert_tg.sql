-- Deploy: schemas/agentic_db_app_public/tables/codebases/triggers/codebases_enqueue_embedding_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases/table
-- requires: schemas/agentic_db_private/trigger_fns/codebases_enqueue_embedding
-- requires: schemas/agentic_db_app_public/tables/projects_chunks/indexes/projects_chunks_chunk_index_idx


CREATE TRIGGER codebases_enqueue_embedding_insert_tg
AFTER INSERT ON agentic_db_app_public.codebases
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE agentic_db_private.codebases_enqueue_embedding ( );

