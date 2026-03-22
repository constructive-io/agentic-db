-- Deploy: schemas/agentic_db_app_public/tables/runtime_state_chunks/triggers/runtime_state_chunks_enqueue_embedding_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_state_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_private/trigger_fns/runtime_state_chunks_enqueue_embedding


CREATE TRIGGER runtime_state_chunks_enqueue_embedding_update_tg
AFTER UPDATE ON agentic_db_app_public.runtime_state_chunks
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE agentic_db_private.runtime_state_chunks_enqueue_embedding ( );

