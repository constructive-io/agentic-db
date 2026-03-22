-- Deploy: schemas/agentic_db_app_public/tables/codebas_chunks/triggers/codebas_chunks_enqueue_embedding_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/table
-- requires: schemas/agentic_db_private/trigger_fns/codebas_chunks_enqueue_embedding
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


CREATE TRIGGER codebas_chunks_enqueue_embedding_update_tg
AFTER UPDATE ON agentic_db_app_public.codebas_chunks
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE agentic_db_private.codebas_chunks_enqueue_embedding ( );

