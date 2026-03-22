-- Deploy: schemas/agentic_db_app_public/tables/goal_chunks/triggers/goal_chunks_enqueue_embedding_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/table
-- requires: schemas/agentic_db_private/trigger_fns/goal_chunks_enqueue_embedding
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/columns/embedding_text/column


CREATE TRIGGER goal_chunks_enqueue_embedding_update_tg
AFTER UPDATE ON agentic_db_app_public.goal_chunks
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE agentic_db_private.goal_chunks_enqueue_embedding ( );

